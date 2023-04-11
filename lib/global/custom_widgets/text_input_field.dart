import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final TextInputType? textInputType;
  final VoidCallback? onShowPasswordTap;
  final String? errorText;
  const TextInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    this.textInputType,
    this.onShowPasswordTap,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.done,
      style:
          AppTextStyle.medium.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
      keyboardType: textInputType ?? null,
      textAlign: TextAlign.start,
      obscureText: obscureText ?? false,
      obscuringCharacter: '•',
      decoration: InputDecoration(
        errorStyle:  AppTextStyle.small.copyWith(color: Colors.white, fontWeight: AppFontWeight.rubikLight),
        errorText: errorText,
        suffixIcon: obscureText != null
            ? TextButton(
                onPressed: onShowPasswordTap,
                style:
                    TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
                child: Text(
                  obscureText! ? 'show' : 'hide',
                  style: AppTextStyle.medium.copyWith(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: AppFontWeight.rubikLight,
                  ),
                ),
              )
            : null,
        suffixStyle: AppTextStyle.small.copyWith(
          color: Colors.white.withOpacity(0.5),
        ),
        contentPadding:
            EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        hintText: hintText,
        filled: true,
        fillColor: Colors.black.withOpacity(0.15),
        hintStyle: AppTextStyle.medium.copyWith(
            color: Colors.white.withOpacity(0.5), fontWeight: AppFontWeight.rubikLight),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(customBorderRadius),
          borderSide: errorText != null
              ? BorderSide(
                  color: AppColors.bodyText, width: 1.5, style: BorderStyle.solid)
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
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(customBorderRadius),
          borderSide: errorText != null
              ? BorderSide(
              color: Colors.white, width: 1.5, style: BorderStyle.solid)
              : BorderSide.none,
        ),
      ),
    );
  }
}
