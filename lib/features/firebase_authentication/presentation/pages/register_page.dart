import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/register/register_bloc.dart';
import '../../../post/presentation/blocs/browse_image_bloc/browse_image_bloc.dart';
import '../blocs/login/login_bloc.dart';
import '../../../../global/custom_widgets/gradient_button.dart';
import '../../../../global/custom_widgets/text_input_field.dart';
import '../../../../global/styles.dart';
import '../../../../global/ui_helpers.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return MultiBlocListener(
      listeners: [
        BlocListener<BrowseImageBloc, BrowseImageState>(
          listener: (context, state) {
            state.whenOrNull(cancelled: () {
              Fluttertoast.showToast(msg: 'Image removed');
            });
          },
        )
      ],
      child: Scaffold(
        body: BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state){
              if(state.status == RegisterStatus.success){
                Fluttertoast.showToast(msg: 'Registration success');
              }
              if(state.status == RegisterStatus.failed){
                Fluttertoast.showToast(msg: state.message);
              }
            },
            builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [AppColors.primary, AppColors.blue])
                ),
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: Text(
                            'luna.',
                            style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 36),
                          ),
                        )),
                    AppVerticalSpace.large,
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: Text(
                          'Create an account',
                          style: AppTextStyle.large.copyWith(color: Colors.white, fontSize: 24, fontWeight: AppFontWeight.rubikMedium),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: Text(
                          'Please provide the required information below.',
                          style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
                        ),
                      ),
                    ),
                    AppVerticalSpace.large,
                    BlocBuilder<BrowseImageBloc, BrowseImageState>(
                      builder: (context, state) => Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: GestureDetector(
                            child: Container(
                              height: state.maybeWhen(success: (_) => 120, orElse: () => 80,),
                              width: state.maybeWhen(success: (_) => 120, orElse: () => 80,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                gradient: AppColors.linearGradient(beginColor: AppColors.accent, endColor: AppColors.yellowGreen),
                                image: state.whenOrNull(success: (image) => DecorationImage(image: FileImage(File(image.path)), fit: BoxFit.cover),),
                              ),
                              child: state.maybeWhen(success: (_) => null, orElse: () => Icon(Ionicons.camera, size: 30, color: AppColors.primary[700],),),
                            ),
                            onTap: () => BlocProvider.of<BrowseImageBloc>(context).add(BrowseImageEvent.onBrowse()),
                          )
                        ),
                      ),
                    ),
                    AppVerticalSpace.small,
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: Text(
                          'Click the camera icon to browse a photo in your gallery.',
                          style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
                        ),
                      ),
                    ),
                    AppVerticalSpace.large,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Column(
                        children: [
                          TextInputField(
                            errorText: state.status == LoginStatus.failed && (state.registerError == RegisterError.emailExist)
                                ? state.message
                                : null,
                            controller: usernameController,
                            hintText: 'Username',
                          ),
                          AppVerticalSpace.small,
                          TextInputField(
                            errorText:  null,
                            controller: firstNameController,
                            hintText: 'First name',
                          ),
                          AppVerticalSpace.small,
                          TextInputField(
                            errorText:  null,
                            controller: lastNameController,
                            hintText: 'Last name',
                          ),
                          AppVerticalSpace.small,
                          TextInputField(
                            errorText:  null,
                            controller: emailController,
                            hintText: 'Email address',
                          ),
                          AppVerticalSpace.small,
                          TextInputField(
                            onShowPasswordTap: () {},
                            obscureText: true,
                            controller: passwordController,
                            hintText: 'password',
                          ),
                          AppVerticalSpace.small,
                          TextInputField(
                            onShowPasswordTap: () {},
                            obscureText: true,
                            controller: confirmPasswordController,
                            hintText: 'Confirm password',
                          ),
                        ],
                      ),
                    ),
                    AppVerticalSpace.medium,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: GradientButton(
                          text: 'Register',
                          onLoading: state.status == LoginStatus.loading,
                          onPressed:(){
                            context.read<RegisterBloc>().add(RegisterEvent.signUpWithEmailAndPassword(
                              credentials: SignUpCredentials(
                                imagePath: BlocProvider.of<BrowseImageBloc>(context, listen: false).state.whenOrNull(success: (image) => File(image.path)),
                                password: passwordController.text,
                                email: emailController.text,
                                lastName: lastNameController.text,
                                firstName: firstNameController.text,
                                username: usernameController.text,
                              ),
                            ),);
                          }),
                    ),
                    AppVerticalSpace.large,
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
