import 'package:flutter/material.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/auth/login/widgets/forms/text_input_field.dart';

class FormView extends StatelessWidget {
  final TextEditingController emailandUsernameController;
  final TextEditingController passwordController;
  const FormView(
      {Key? key,
      required this.emailandUsernameController,
      required this.passwordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextInputField(
          textInputType: TextInputType.emailAddress,
          controller: emailandUsernameController,
          hintText: 'username or email',
        ),
        verticalSpaceSmall,
        TextInputField(
          obscureText: true,
          controller: passwordController,
          hintText: 'password',
        ),
      ],
    );
  }
}
