import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/presentation/blocs/login/login_bloc.dart';
import 'package:luna/global/custom_widgets/gradient_button.dart';
import 'package:luna/global/custom_widgets/text_input_field.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [lPrimaryColor, lPrimaryColorsTransition])
            ),
            child: ListView(
              children: [
                verticalSpaceMassive,
                Center(
                    child: Text(
                      'luna.',
                      style: GoogleFonts.yesteryear(color: Colors.white, fontSize: 80),
                    )),
                verticalSpaceLarge,
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      'Welcome!',
                      style: largeTextStyle.copyWith(color: Colors.white, fontSize: 24, fontWeight: rubikMedium),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      'Login using your username or email.',
                      style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
                    ),
                  ),
                ),
                verticalSpaceLarge,
                verticalSpaceLarge,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    children: [
                      TextInputField(
                        errorText: state.maybeWhen(
                            emailFailure:(message) => message ,
                            orElse: () => null),
                        textInputType: TextInputType.emailAddress,
                        controller: emailController,
                        hintText: 'Email',
                      ),
                      verticalSpaceSmall,
                      TextInputField(
                        errorText: state.maybeWhen(
                            passwordFailure:(message) => message ,
                            orElse: () => null),
                        onShowPasswordTap: () {},
                        obscureText: true,
                        controller: passwordController,
                        hintText: 'password',
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: GradientButton(
                      text: 'Login',
                      onLoginBusy: state.maybeWhen(
                          loggingIn: () => true,
                          orElse:() => false
                      ),
                      onPressed: () => BlocProvider.of<LoginBloc>(context)
                          .add(LoginEvent.signInWithEmailAndPassword(
                          emailAndPassword: LoginCredentials(
                              email: emailController.text.toString(),
                              password: passwordController.text.toString())))),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
