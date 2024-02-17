import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      double width,
      double height,
      Color fontColor,
      double borderRadius,
      Color backgroundColor,
      double borderWidth,
      Color borderColor,
      String icon) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(width: borderWidth, color: borderColor),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(
              width: 12.0,
            ),
            TextStyles.bodyL(title, fontColor, 'semiBold', TextAlign.center),
          ],
        ));
  }

  static buttonWithLogin(
    String title,
  ) {}
}
