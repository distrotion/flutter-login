import 'package:flutter/material.dart';

class CustomTheme {
  static Color colorDark = const Color(0xff0b1327);
  static Color colorWhite = Colors.white;
  static Color colorGrey = const Color(0xff666666); //For left menu in Dark bg
  static Color colorGreyDisable = const Color(0xffb2b2b2);
  static Color colorGreyBg = const Color(0xfff2f2f2);
  static Color colorGreyLight = const Color(0xffe5e5e5);

  static Color colorShadowBgStrong = const Color(0x40000000);
  static Color colorShadowBgWeak = const Color(0x20000000);

  static Color colorFadeBlackBg = const Color(0x66000000);
  static Color colorGreenCorrect = Colors.green;
  static Color colorRedError = const Color(0xffdb4c41);
  static Color colorRedErrorBg = const Color(0x11db4c41);
}

class TxtStyle extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final String fontFamily = 'Mitr';
  final FontStyle fontStyle = FontStyle.normal;

  const TxtStyle(
      {this.fontSize = 12,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal})
      : super();
}

class TxtStyleBlackBG extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final String fontFamily = 'Mitr';
  final FontStyle fontStyle = FontStyle.normal;

  const TxtStyleBlackBG(
      {this.fontSize = 16,
      this.color = Colors.white,
      this.fontWeight = FontWeight.normal})
      : super();
}

class TxtStyleWhiteBG extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final String fontFamily = 'Mitr';
  final FontStyle fontStyle = FontStyle.normal;

  const TxtStyleWhiteBG(
      {this.fontSize = 16,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal})
      : super();
}
