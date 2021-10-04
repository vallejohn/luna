import 'package:flutter/material.dart';
import 'package:luna/global/custom_widgets/gradient_button.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/global/custom_widgets/text_input_field.dart';
import 'package:luna/ui/auth/register/register_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class RegisterFormView extends HookViewModelWidget<RegisterViewModel> {

  final TextEditingController usernameController;
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const RegisterFormView({
    required this.usernameController, 
    required this.firstnameController, 
    required this.lastnameController, 
    required this.emailController, 
    required this.passwordController, 
    required this.confirmPasswordController, 
    Key? key,
  }) : super(key: key);

  @override
  Widget buildViewModelWidget(BuildContext context, RegisterViewModel model) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextInputField(
          hasError: model.usernameError,
          textInputType: TextInputType.text,
          controller: usernameController,
          hintText: 'username',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: model.firstnameError,
          textInputType: TextInputType.text,
          controller: firstnameController,
          hintText: 'first name',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: model.lastnameError,
          textInputType: TextInputType.text,
          controller: lastnameController,
          hintText: 'last name',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: model.emailError,
          textInputType: TextInputType.emailAddress,
          controller: emailController,
          hintText: 'email address',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: model.passwordError,
          obscureText: true,
          onShowPasswordTap: () {},
          textInputType: TextInputType.text,
          controller: passwordController,
          hintText: 'password',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: model.confirmPasswordError,
          obscureText: true,
          onShowPasswordTap: () {},
          textInputType: TextInputType.text,
          controller: confirmPasswordController,
          hintText: 'confirm password',
        ),
        verticalSpaceMedium,
        GradientButton(
          text: 'Register',
          onLoginBusy: model.isBusy,
          onPressed: () => model.saveData()),
        verticalSpaceRegular,
      ],
    );
  }
}
