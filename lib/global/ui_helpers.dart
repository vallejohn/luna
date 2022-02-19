import 'package:flutter/material.dart';

const double horizontalMargin = 16;
const double customBorderRadius = 10;

class AppHorizontalSpace{
  static const Widget tiny = SizedBox(width: 5.0);
  static const Widget small = SizedBox(width: 10.0);
  static const Widget regular = SizedBox(width: 18.0);
  static const Widget medium = SizedBox(width: 25.0);
  static const Widget large = SizedBox(width: 50.0);
}

class AppVerticalSpace{
  static const Widget extraTiny = SizedBox(height: 1.0);
  static const Widget tiny = SizedBox(height: 5.0);
  static const Widget small = SizedBox(height: 10.0);
  static const Widget regular = SizedBox(height: 18.0);
  static const Widget medium = SizedBox(height: 25);
  static const Widget large = SizedBox(height: 50.0);
  static const Widget massive = SizedBox(height: 120.0);
}