import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/login/login_viewmodel.dart';
import 'package:luna/ui/auth/login/widgets/forms/form_view.dart';
import 'package:luna/ui/auth/login/widgets/gradient_button.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [lPrimaryColor, lPrimaryColorsTransition]),
            ),
            child: ListView(
              children: [
                verticalSpaceMassive,
                Center(
                    child: Text(
                  'luna.',
                  style:
                      GoogleFonts.yesteryear(color: Colors.white, fontSize: 80),
                )),
                verticalSpaceLarge,
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      'Welcome!',
                      style: largeTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: rubikMedium),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      'Login using your username or email.',
                      style: mediumTextStyle.copyWith(
                          color: Colors.white, fontWeight: rubikLight),
                    ),
                  ),
                ),
                verticalSpaceLarge,
                verticalSpaceLarge,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: FormView(
                    emailandUsernameController: emailController,
                    passwordController: passwordController,
                  ),
                ),
                verticalSpaceMedium,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: GradientButton(
                      onLoginBusy: model.isBusy,
                      onPressed: () => model.login(
                          email: emailController.text.toString(),
                          password: passwordController.text.toString())),
                ),
                verticalSpaceRegular,
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45),
                        child: GestureDetector(
                          onTap: () => model.goToRegisterView(),
                          child: Text(
                            'Create account',
                            style: mediumTextStyle.copyWith(
                                color: Colors.white, fontWeight: rubikLight),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: GestureDetector(
                        onTap: () => model.goToRegisterView(),
                        child: Text(
                          'Forgot password?',
                          style: mediumTextStyle.copyWith(
                              color: Colors.white, fontWeight: rubikLight),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceLarge,
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: GestureDetector(
                      onTap: () => model.goToRegisterView(),
                      child: Wrap(
                        children: [
                          Text(
                            'Sign in with',
                            style: mediumTextStyle.copyWith(
                                color: Colors.white, fontWeight: rubikLight),
                          ),
                          Text(
                            ' Google',
                            style: mediumTextStyle.copyWith(
                                color: Colors.white, fontWeight: rubikSemiBold),
                          ),
                          Text(
                            ' or ',
                            style: mediumTextStyle.copyWith(
                                color: Colors.white, fontWeight: rubikLight),
                          ),
                          Text(
                            'Facebook',
                            style: mediumTextStyle.copyWith(
                                color: Colors.white, fontWeight: rubikSemiBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
