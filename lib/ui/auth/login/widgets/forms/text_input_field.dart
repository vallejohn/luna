import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final TextInputType? textInputType;
  const TextInputField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.obscureText,
      this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.done,
      style:
          mediumTextStyle.copyWith(color: Colors.white, fontWeight: rubikLight),
      keyboardType: textInputType ?? null,
      textAlign: TextAlign.start,
      obscureText: obscureText ?? false,
      obscuringCharacter: '•',
      decoration: InputDecoration(
        suffixIcon: obscureText != null && obscureText == true
            ? TextButton(
                onPressed: () {},
                style:
                    TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
                child: Text(
                  'show',
                  style: mediumTextStyle.copyWith(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: rubikLight,
                  ),
                ),
              )
            : null,
        suffixStyle: smallTextStyle.copyWith(
          color: Colors.white.withOpacity(0.5),
        ),
        contentPadding:
            EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        hintText: hintText,
        filled: true,
        fillColor: Colors.black.withOpacity(0.15),
        hintStyle: mediumTextStyle.copyWith(
            color: Colors.white.withOpacity(0.5), fontWeight: rubikLight),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(customBorderRadius),
            borderSide: BorderSide.none),
      ),
    );
  }
}
