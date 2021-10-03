import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/register/register_form_view.dart';
import 'package:luna/ui/auth/register/register_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      viewModelBuilder: () => RegisterViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Text(
                    'Create an account',
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
                    'Please provide the required information below.',
                    style: mediumTextStyle.copyWith(
                        color: Colors.white, fontWeight: rubikLight),
                  ),
                ),
              ),
              verticalSpaceLarge,
              verticalSpaceLarge,
              /* Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Center(
                      child: Text(
                    'Invalid input',
                    style: mediumTextStyle.copyWith(
                        color: Colors.white, fontWeight: rubikLight),
                  )),
                ), */
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: RegisterFormView(),
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
    );
  }
}
