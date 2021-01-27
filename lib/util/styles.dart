import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();
  static Color primaryColor = getColor("e63946");
  static Color backgroundColor = Colors.white;
  static TextStyle iosTextStyle(
      Color color, double fontsize, FontWeight fontWeight) {
    return TextStyle(
        fontFamily: "Helvetica",
        color: color,
        fontSize: fontsize,
        fontWeight: fontWeight);
  }

  static TextStyle androidTextStyle(
      Color color, double fontsize, FontWeight fontWeight) {
    return TextStyle(
        fontFamily: "Sans",
        color: color,
        fontSize: fontsize,
        fontWeight: fontWeight);
  }

  static platformTextStyle(
      bool isIOS, Color color, double fontsize, FontWeight fontWeight) {
    return isIOS
        ? iosTextStyle(color, fontsize, fontWeight)
        : androidTextStyle(color, fontsize, fontWeight);
  }

  static Color getColor(String code) => Color(int.parse("0xFF$code"));

}
