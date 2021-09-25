import 'package:flutter/material.dart';
import 'package:luna/global/custom_widgets/shadowed_container.dart';
import 'package:luna/global/ui_helpers.dart';

class ShadowedTextButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const ShadowedTextButton({Key? key, required this.child, required this.backgroundColor, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowedContainer(
      backgroundColor: backgroundColor,
      height: 40,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(customBorderRadius))
      ),
          ),
          child: child),
    );
  }
}
