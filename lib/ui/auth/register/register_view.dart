import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/register/register_form_view.dart';
import 'package:luna/ui/auth/register/register_view.form.dart';
import 'package:luna/ui/auth/register/register_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields:[
  FormTextField(name: 'username'),
  FormTextField(name: 'firstname'),
  FormTextField(name: 'lastname'),
  FormTextField(name: 'emailAddress'),
  FormTextField(name: 'password'),
  FormTextField(name: 'confirmPassword'),
])

class RegisterView extends StatelessWidget with $RegisterView{
  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
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
              if (model.validationMessage != '' && model.validationMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Center(
                      child: Text(
                    '${model.validationMessage}',
                    style: mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
                  )),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: RegisterFormView(
                  usernameController: usernameController, 
                  firstnameController: firstnameController, 
                  lastnameController: lastnameController, 
                  emailController: emailAddressController, 
                  passwordController: passwordController, 
                  confirmPasswordController: confirmPasswordController), 
                  
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
    );
  }
}
