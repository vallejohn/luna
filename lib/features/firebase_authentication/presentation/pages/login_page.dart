import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/router/app_router.dart';

import '../../../../core/utils/params.dart';
import '../blocs/login/login_bloc.dart';
import '../../../../global/custom_widgets/gradient_button.dart';
import '../../../../global/custom_widgets/text_input_field.dart';
import '../../../../global/styles.dart';
import '../../../../global/ui_helpers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state){
            if(state.status == LoginStatus.success){
              Fluttertoast.showToast(msg: 'Login success');
            }
            if(state.status == LoginStatus.failed){
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
                  AppVerticalSpace.massive,
                  Center(
                      child: Text(
                        'luna.',
                        style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 80),
                      )),
                  AppVerticalSpace.large,
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        'Welcome!',
                        style: AppTextStyle.large.copyWith(color: Colors.white, fontSize: 24, fontWeight: AppFontWeight.rubikMedium),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Text(
                        'Login using your username or email.',
                        style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
                      ),
                    ),
                  ),
                  AppVerticalSpace.large,
                  AppVerticalSpace.large,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Column(
                      children: [
                        TextInputField(
                          errorText: state.status == LoginStatus.failed && (state.loginError == LoginError.userNotFound || state.loginError == LoginError.invalidEmail)
                              ? state.message
                              : null,
                          textInputType: TextInputType.emailAddress,
                          controller: emailController,
                          hintText: 'Username or Email',
                        ),
                        AppVerticalSpace.small,
                        TextInputField(
                          errorText: state.status == LoginStatus.failed && state.loginError == LoginError.wrongPassword
                              ? state.message
                              : null,
                          onShowPasswordTap: () {},
                          obscureText: true,
                          controller: passwordController,
                          hintText: 'password',
                        ),
                      ],
                    ),
                  ),
                  AppVerticalSpace.medium,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: GradientButton(
                        text: 'Login',
                        onLoading: state.status == LoginStatus.loading,
                        onPressed: () => BlocProvider.of<LoginBloc>(context)
                            .add(LoginEvent.signInWithEmailAndPassword(
                            emailAndPassword: LoginCredentials(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString())))),
                  ),
                  AppVerticalSpace.medium,
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: GestureDetector(
                            onTap: () => AutoRouter.of(context).push(const RegisterRoute()),
                            child: Text(
                              'Create account',
                              style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot password?',
                            style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppVerticalSpace.large,
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: GestureDetector(
                        onTap: (){},
                        child: Wrap(
                          children: [
                            Text(
                              'Sign in with',
                              style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
                            ),
                            Text(
                              ' Google',
                              style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikSemiBold),
                            ),
                            Text(
                              ' or ',
                              style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
                            ),
                            Text(
                              'Facebook',
                              style: AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikSemiBold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppVerticalSpace.large,
                ],
              ),
            );
          }
      ),
    );
  }
}
