import 'dart:io';

import 'package:CoKitchen/util/utils.dart';
import 'package:flutter/material.dart';

trackButton(Size size) {
  bool isIOS = Platform.isIOS;
  return GestureDetector(
      onTap:null ,
      child: Container(
        width: size.width * 0.9,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppStyles.getColor("49B800"),
          borderRadius: BorderRadius.circular(10)
          ),
        child: Text(
        "Track order",
        textAlign: TextAlign.center,
        style: AppStyles.platformTextStyle(isIOS, Colors.white,16, FontWeight.w700),
        ),
    ),
  );
}
