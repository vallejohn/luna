import 'package:flutter/material.dart';

const MaterialColor _teal = MaterialColor(
  _tealPrimaryValue,
  <int, Color>{
    50: Color(0xFFE0F2F1),
    100: Color(0xFFB2DFDB),
    200: Color(0xFF80CBC4),
    300: Color(0xFF4DB6AC),
    400: Color(0xFF26A69A),
    500: Color(_tealPrimaryValue),
    600: Color(0xFF00897B),
    700: Color(0xFF00796B),
    800: Color(0xFF00695C),
    900: Color(0xFF004D40),
  },
);
const int _tealPrimaryValue = 0xFF009688;

const Color _yellow = Color(0xffE0B620);
const Color _yellowGreen = Color(0xff80E020);
const Color _orange = Color(0xffCA5500);
const Color _blue = Color(0xff165f7f);
const Color _error = Color(0xffCA0000);
const Color _electricBlue = Color(0xff57737a);

const Color _bodyTextColor = Color(0xff000000);
const Color _lightGrey = Color(0xffA3A3A3);
const Color _backgroundColor = Color(0xffE5E5E5);
const Color _darkGreyColor = Color(0xff616161);
const Color _textFieldBGColor = Color(0xffF9F9F9);
const Color _lightBlack = Color(0xff4F4F4F);

class AppColors{
  static const primary = _teal;
  static const secondary = _teal;
  static const accent = _yellow;
  static const warning = _orange;
  static const error = _error;
  static const blue = _blue;
  static const lightGrey = _lightGrey;
  static const electricBlue = _electricBlue;
  static const yellowGreen = _yellowGreen;

  static const bodyText = _bodyTextColor;
  static const background = _backgroundColor;
  static const darkGrey = _darkGreyColor;
  static const textFieldBG = _textFieldBGColor;
  static const lightBlack = _lightBlack;

  static LinearGradient linearGradient({required Color beginColor, required Color endColor}){
    return LinearGradient(
        begin: Alignment(-4.0, -2.0),
        end: Alignment(3.0, 4.0),
        colors: [
          beginColor,
          endColor,
        ]);
  }
}

class AppFontWeight{
  static const FontWeight rubikLight = FontWeight.w300;
  static const FontWeight rubikRegular = FontWeight.w400;
  static const FontWeight rubikMedium = FontWeight.w500;
  static const FontWeight rubikSemiBold = FontWeight.w600;
  static const FontWeight rubikBold = FontWeight.w700;
  static const FontWeight rubikBlack = FontWeight.w800;
}

class AppTextStyle{
  static const TextStyle massive = TextStyle(color: _bodyTextColor, fontSize: textSizeMassive);
  static const TextStyle extraLarge = TextStyle(color: _bodyTextColor, fontSize: textSizeExtraLarge);
  static const TextStyle large = TextStyle(color: _bodyTextColor, fontSize: textSizeLarge);
  static const TextStyle medium = TextStyle(color: _bodyTextColor, fontSize: textSizeMedium);
  static const TextStyle small = TextStyle(color: _bodyTextColor, fontSize: textSizeSmall);
}

const double textSizeMassive = 30;
const double textSizeExtraLarge = 25;
const double textSizeLarge = 18;
const double textSizeMedium = 16;
const double textSizeSmall = 12;
