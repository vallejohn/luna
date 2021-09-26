import 'package:flutter/material.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool? onLoginBusy;
  const GradientButton({Key? key, required this.onPressed, this.onLoginBusy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          gradient: buttonGradientBGColor,
          borderRadius: BorderRadius.circular(customBorderRadius),
          boxShadow: [
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
                  color: lPrimaryColorsTransition,
                ),
              )
            : Text(
                'Login',
                style: largeTextStyle.copyWith(color: lPrimaryColorsTransition),
              ),
      ),
    );
  }
}
