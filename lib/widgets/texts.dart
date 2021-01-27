import 'package:CoKitchen/util/utils.dart';
import 'package:flutter/material.dart';

iconLeftText(IconData icon, double iconSize, Color iconColor, text,
    TextStyle textStyle) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Icon(icon, size: iconSize, color: iconColor),
        ),
        Container(
          padding: EdgeInsets.all(2),
          child: Text(text, style: textStyle),
        ),
      ],
    ),
  );
}

iconRightText(IconData icon, double iconSize, Color iconColor, text,
    TextStyle textStyle) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(2),
          child: Text(text, style: textStyle),
        ),
        Container(
          // padding: EdgeInsets.all(5),
          child: Icon(icon, size: iconSize, color: iconColor),
        ),
      ],
    ),
  );
}

designedText(text,
    TextStyle textStyle) {
  return Container(
    // padding: EdgeInsets.all(5),
    child: Text(text, style: textStyle),
  );
}

Widget multipleInlineTexts(String text1, String text2, bool isIOS) {
    return Container(
      padding:EdgeInsets.all(5.0),
      margin:EdgeInsets.all(10.0),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          designedText(text1, AppStyles.platformTextStyle(
                      isIOS, Colors.grey, 13.0, FontWeight.normal)),
                      Spacer(),
          designedText(text2, AppStyles.platformTextStyle(
                      isIOS, Colors.grey, 13.0, FontWeight.normal)),
        ],
      ),
    );
  }
