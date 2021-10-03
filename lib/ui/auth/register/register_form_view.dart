import 'package:flutter/material.dart';
import 'package:luna/global/custom_widgets/gradient_button.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/global/custom_widgets/text_input_field.dart';
import 'package:luna/ui/auth/register/register_viewmodel.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class RegisterFormView extends HookViewModelWidget<RegisterViewModel> {
  const RegisterFormView({
    Key? key,
  }) : super(key: key);

  @override
  Widget buildViewModelWidget(BuildContext context, RegisterViewModel model) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController firstnameController = TextEditingController();
    TextEditingController lastnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextInputField(
          hasError: false,
          errorMessage: '',
          textInputType: TextInputType.text,
          controller: usernameController,
          hintText: 'username',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: false,
          errorMessage: '',
          textInputType: TextInputType.text,
          controller: firstnameController,
          hintText: 'first name',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: false,
          errorMessage: '',
          textInputType: TextInputType.text,
          controller: lastnameController,
          hintText: 'last name',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: false,
          errorMessage: '',
          textInputType: TextInputType.emailAddress,
          controller: emailController,
          hintText: 'email address',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: false,
          obscureText: true,
          onShowPasswordTap: () {},
          errorMessage: '',
          textInputType: TextInputType.text,
          controller: passwordController,
          hintText: 'password',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: false,
          obscureText: true,
          onShowPasswordTap: () {},
          errorMessage: '',
          textInputType: TextInputType.text,
          controller: confirmPassword,
          hintText: 'confirm password',
        ),
        verticalSpaceMedium,
        GradientButton(
          text: 'Register',
          onLoginBusy: model.isBusy,
          onPressed: () => model.register(
              username: usernameController.text.toString(),
              firstname: firstnameController.text.toString(),
              lastname: lastnameController.text.toString(),
              email: emailController.text.toString(),
              password: passwordController.text.toString()),
        ),
        verticalSpaceRegular,
      ],
    );
  }
}
