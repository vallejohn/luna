import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/login/login_viewmodel.dart';
import 'package:luna/ui/auth/login/login_form_view.dart';
import 'package:luna/global/custom_widgets/gradient_button.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'login_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'usernameOrEmail'),
  FormTextField(name: 'password'),
])
class LoginView extends StatelessWidget with $LoginView {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [lPrimaryColor, lPrimaryColorsTransition]),
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
              if (model.validationMessage != '' && model.validationMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Center(
                      child: Text(
                    '${model.validationMessage}',
                    style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
                  )),
                ),
              if (model.validationMessage != '' && model.validationMessage != null) verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: LoginFormView(
                  emailandUsernameController: usernameOrEmailController,
                  passwordController: passwordController,
                ),
              ),
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: GradientButton(text: 'Login', onLoginBusy: model.isBusy, onPressed: () => model.saveData()),
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
                          style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
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
                        style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
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
                          style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
                        ),
                        Text(
                          ' Google',
                          style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikSemiBold),
                        ),
                        Text(
                          ' or ',
                          style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
                        ),
                        Text(
                          'Facebook',
                          style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikSemiBold),
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
    );
  }
}
