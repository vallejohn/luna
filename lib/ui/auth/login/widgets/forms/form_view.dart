import 'package:flutter/material.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/login/login_viewmodel.dart';
import 'package:luna/ui/auth/login/widgets/forms/text_input_field.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class FormView extends HookViewModelWidget<LoginViewModel> {
  final TextEditingController emailandUsernameController;
  final TextEditingController passwordController;
  const FormView({
    Key? key,
    required this.emailandUsernameController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget buildViewModelWidget(BuildContext context, LoginViewModel model) {
    return Column(
      children: [
        TextInputField(
          hasError: model.emailError,
          errorMessage: model.validationMessage,
          textInputType: TextInputType.emailAddress,
          controller: emailandUsernameController,
          hintText: 'username or email',
        ),
        verticalSpaceSmall,
        TextInputField(
          hasError: model.passwordError,
          errorMessage: model.validationMessage,
          onShowPasswordTap: () => model.onShowPasswordTap(),
          obscureText: model.hidePassword,
          controller: passwordController,
          hintText: 'password',
        ),
      ],
    );
  }
}
