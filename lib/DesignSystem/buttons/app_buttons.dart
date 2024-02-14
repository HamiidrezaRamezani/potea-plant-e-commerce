import 'package:flutter/material.dart';

import '../typography/text_style.dart';

class AppButtons {
  AppButtons._();

  static buttonWithoutIcon(String title, double width, double height,
      Color fontColor, double borderRadius, Color backgroundColor) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      child: Center(
        child: TextStyles.bodyL(title, fontColor, 'bold', TextAlign.center),
      ),
    );
  }

  static buttonWithIcon(
    String title,
  ) {}

  static buttonWithLogin(
    String title,
  ) {}
}
