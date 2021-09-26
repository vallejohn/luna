import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final TextInputType? textInputType;
  final VoidCallback? onShowPasswordTap;
  final bool hasError;
  final String errorMessage;
  const TextInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    this.textInputType,
    this.onShowPasswordTap,
    required this.hasError,
    required this.errorMessage,
  }) : super(key: key);

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
        suffixIcon: obscureText != null
            ? TextButton(
                onPressed: onShowPasswordTap,
                style:
                    TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
                child: Text(
                  obscureText! ? 'show' : 'hide',
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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(customBorderRadius),
          borderSide: hasError
              ? BorderSide(
                  color: lErrorColor, width: 1.5, style: BorderStyle.solid)
              : BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(customBorderRadius),
            borderSide:
                BorderSide(color: Colors.white.withOpacity(0.2), width: 1.5)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(customBorderRadius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
