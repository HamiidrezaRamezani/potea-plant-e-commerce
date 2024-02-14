import 'package:flutter/material.dart';
import 'package:potea_plant_e_commerce/DesignSystem/typography/app_font_size.dart';

class TextStyles {
  TextStyles._();

// h1 text style
  static heading1(String text, Color fontColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: AppFontSize.h1,
          color: fontColor,
          fontFamily: 'urbanistBold'),
    );
  }

  // h2 text style
  static heading2(String text, Color fontColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: AppFontSize.h2,
          color: fontColor,
          fontFamily: 'urbanistBold'),
    );
  }

  // h3 text style
  static heading3(String text, Color fontColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: AppFontSize.h3,
          color: fontColor,
          fontFamily: 'urbanistBold'),
    );
  }

  // h4 text style
  static heading4(String text, Color fontColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: AppFontSize.h4,
          color: fontColor,
          fontFamily: 'urbanistBold'),
    );
  }

  // h5 text style
  static heading5(String text, Color fontColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: AppFontSize.h5,
          color: fontColor,
          fontFamily: 'urbanistBold'),
    );
  }

  // h6 text style
  static heading6(String text, Color fontColor) {
    return Text(
      text,
      style: TextStyle(
          fontSize: AppFontSize.h6,
          color: fontColor,
          fontFamily: 'urbanistBold'),
    );
  }

  // bodyX text style
  static bodyX(String text, Color fontColor, family, align) {
    switch (family) {
      case "bold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyX,
              color: fontColor,
              fontFamily: 'urbanistBold'),
          textAlign: align,
        );

      case "semiBold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyX,
              color: fontColor,
              fontFamily: 'urbanistSemiBold'),

          textAlign: align,
        );

      case "medium":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyX,
              color: fontColor,
              fontFamily: 'urbanistMedium'),
          textAlign: align,
        );

      case "regular":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyX,
              color: fontColor,
              fontFamily: 'urbanistRegular'),
          textAlign: align,
        );
    }
  }

  // bodyL text style
  static bodyL(String text, Color fontColor, family, align) {
    switch (family) {
      case "bold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyL,
              color: fontColor,
              fontFamily: 'urbanistBold'),
          textAlign: align,
        );

      case "semiBold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyL,
              color: fontColor,
              fontFamily: 'urbanistSemiBold'),
          textAlign: align,
        );

      case "medium":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyL,
              color: fontColor,
              fontFamily: 'urbanistMedium'),
          textAlign: align,
        );

      case "regular":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyL,
              color: fontColor,
              fontFamily: 'urbanistRegular'),
          textAlign: align,
        );
    }
  }

  // bodyM text style
  static bodyM(String text, Color fontColor, family, align) {
    switch (family) {
      case "bold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyM,
              color: fontColor,
              fontFamily: 'urbanistBold'),
          textAlign: align,
        );

      case "semiBold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyM,
              color: fontColor,
              fontFamily: 'urbanistSemiBold'),
          textAlign: align,
        );

      case "medium":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyM,
              color: fontColor,
              fontFamily: 'urbanistMedium'),
          textAlign: align,
        );

      case "regular":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyM,
              color: fontColor,
              fontFamily: 'urbanistRegular'),
          textAlign: align,
        );
    }
  }

  // bodyS text style
  static bodyS(String text, Color fontColor, family, align) {
    switch (family) {
      case "bold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyS,
              color: fontColor,
              fontFamily: 'urbanistBold'),
          textAlign: align,
        );

      case "semiBold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyS,
              color: fontColor,
              fontFamily: 'urbanistSemiBold'),
          textAlign: align,
        );

      case "medium":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyS,
              color: fontColor,
              fontFamily: 'urbanistMedium'),
          textAlign: align,
        );

      case "regular":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyS,
              color: fontColor,
              fontFamily: 'urbanistRegular'),
          textAlign: align,
        );
    }
  }

  // bodyXS text style
  static bodyXS(String text, Color fontColor, family, align) {
    switch (family) {
      case "bold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyXS,
              color: fontColor,
              fontFamily: 'urbanistBold'),
          textAlign: align,
        );

      case "semiBold":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyXS,
              color: fontColor,
              fontFamily: 'urbanistSemiBold'),
          textAlign: align,
        );

      case "medium":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyXS,
              color: fontColor,
              fontFamily: 'urbanistMedium'),
          textAlign: align,
        );

      case "regular":
        return Text(
          text,
          style: TextStyle(
              fontSize: AppFontSize.bodyXS,
              color: fontColor,
              fontFamily: 'urbanistRegular'),
          textAlign: align,
        );
    }
  }

  // custom text
  static custom(
      String text, Color fontColor, double fontSize, String fontFamily, TextAlign align) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, color: fontColor, fontFamily: fontFamily),
      textAlign: align,
    );
  }
}
