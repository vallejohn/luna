import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool? onLoginBusy;
  final String text;
  const GradientButton({Key? key, required this.onPressed, this.onLoginBusy, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          gradient: AppColors.linearGradient(beginColor: AppColors.accent, endColor: AppColors.yellowGreen),
          borderRadius: BorderRadius.circular(customBorderRadius), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          spreadRadius: 1,
          blurRadius: 20,
          offset: Offset(0, 10),
        )
      ]),
      child: TextButton(
        onPressed: onPressed,
        child: onLoginBusy! && onLoginBusy != null
            ? Container(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: AppColors.bodyText,
                ),
              )
            : Text(
                text,
                style: AppTextStyle.large.copyWith(color: AppColors.primary[700]),
              ),
      ),
    );
  }
}
