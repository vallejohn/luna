import 'package:flutter/material.dart';
import 'package:luna/global/ui_helpers.dart';

class ShadowedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget child;
  final Color? backgroundColor;

  const ShadowedContainer({Key? key,
    this.width,
    this.height,
    required this.child,
    this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?? null,
      width: width?? null,
      decoration: BoxDecoration(
        color: backgroundColor?? Colors.white,
        borderRadius: BorderRadius.circular(customBorderRadius),
        boxShadow:[
          BoxShadow(
            color: backgroundColor != null ? backgroundColor!.withOpacity(0.4) : Colors.black.withOpacity(0.09),
            spreadRadius: 2,
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ]
      ),
      child: child,
    );
  }
}
