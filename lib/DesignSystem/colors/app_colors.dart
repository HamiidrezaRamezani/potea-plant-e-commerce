import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Colors
  static Color primary500Color = const Color(0xFF01B763);
  static Color primary400Color = const Color(0xFF34C582);
  static Color primary300Color = const Color(0xFF67D4A1);
  static Color primary200Color = const Color(0xFF99E2C1);
  static Color primary100Color = const Color(0xFFE6F8EF);

  // Secondary Colors
  static Color secondary500Color = const Color(0xFF797979);
  static Color secondary400Color = const Color(0xFF949494);
  static Color secondary300Color = const Color(0xFFAFAFAF);
  static Color secondary200Color = const Color(0xFFC9C9C9);
  static Color secondary100Color = const Color(0xFFF2F2F2);

  //Alert & Status Colors
  static Color info = const Color(0xFF01B763);
  static Color success = const Color(0xFF4ADE80);
  static Color warning = const Color(0xFFFACC15);
  static Color error = const Color(0xFFF75555);
  static Color disabled = const Color(0xFFD8D8D8);
  static Color disabledButton = const Color(0xFF109C5B);

  // Greyscale
  static Color grey900 = const Color(0xFF212121);
  static Color grey800 = const Color(0xFF424242);
  static Color grey700 = const Color(0xFF616161);
  static Color grey600 = const Color(0xFF757575);
  static Color grey500 = const Color(0xFF9E9E9E);
  static Color grey400 = const Color(0xFFBDBDBD);
  static Color grey300 = const Color(0xFFE0E0E0);
  static Color grey200 = const Color(0xFFEEEEEE);
  static Color grey100 = const Color(0xFFF5F5F5);
  static Color grey50 = const Color(0xFFFAFAFA);

  // Gradients Colors
  static List<Color> gradientGreen = [
    const Color(0XFF14E585),
    const Color(0xFF01B763)
  ];
  static List<Color> gradientBlue = [
    const Color(0XFF5F82FF),
    const Color(0xFF335EF7)
  ];
  static List<Color> gradientPurple = [
    const Color(0XFF9D59FF),
    const Color(0xFF7210FF)
  ];
  static List<Color> gradientYellow = [
    const Color(0XFFFFE580),
    const Color(0xFFFACC15)
  ];
  static List<Color> gradientRed = [
    const Color(0XFFFF8A9B),
    const Color(0xFFFF4D67)
  ];
  static List<Color> gradientBlack = [
    const Color(0XFF313130),
    const Color(0xFF101010)
  ];

  // Dark Colors
  static Color dark1 = const Color(0xFF181A20);
  static Color dark2 = const Color(0xFF1F222A);
  static Color dark3 = const Color(0xFF35383F);

  // Others Colors
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color red = const Color(0xFFF44336);
  static Color pink = const Color(0xFFE91E63);
  static Color purple = const Color(0xFF9C27B0);
  static Color deepPurple = const Color(0xFF673AB7);
  static Color indigo = const Color(0xFF3F51B5);
  static Color blue = const Color(0xFF2196F3);
  static Color lightBlue = const Color(0xFF03A9F4);
  static Color cyan = const Color(0xFF00BCD4);
  static Color teal = const Color(0xFF009688);
  static Color green = const Color(0xFF4CAF50);
  static Color lightGreen = const Color(0xFF8BC34A);
  static Color lime = const Color(0xFFCDDC39);
  static Color yellow = const Color(0xFFFFEB3B);
  static Color amber = const Color(0xFFFFC107);
  static Color orange = const Color(0xFFFF9800);
  static Color deepOrange = const Color(0xFFFF5722);
  static Color brown = const Color(0xFF795548);
  static Color blueGrey = const Color(0xFF607D8B);

  // Background Colors
  static Color silver1 = const Color(0xFFF8F8F8);
  static Color silver2 = const Color(0xFFF3F3F3);
  static Color greenBack = const Color(0xFFF2FFFC);
  static Color purpleBack = const Color(0xFFF4ECFF);
  static Color blueBack = const Color(0xFFF6FAFD);
  static Color orangeBack = const Color(0xFFFFF8ED);
  static Color yellowBack = const Color(0xFFFFFEE0);

  // Transparent Colors
  static Color greenTran = const Color(0xFF01B763).withOpacity(0.08);
  static Color silverTran = const Color(0xFF101010).withOpacity(0.08);
  static Color purpleTran = const Color(0xFF7210FF).withOpacity(0.08);
  static Color blueTran = const Color(0xFF335EF7).withOpacity(0.08);
  static Color orangeTran = const Color(0xFFFF9800).withOpacity(0.08);
  static Color yellowTran = const Color(0xFFFACC15).withOpacity(0.08);
  static Color redTran = const Color(0xFFF75555).withOpacity(0.08);
  static Color cyanTran = const Color(0xFF00BCD4).withOpacity(0.08);
}
