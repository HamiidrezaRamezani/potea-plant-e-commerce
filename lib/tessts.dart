import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

extension CustomFontText on String {
  /// تغییر فونت برای متن فارسی
  Text persianFont({double fontSize = 14.0, Color color = Colors.black}) {
    return Text(
      this,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: 'iranYekanRegular', // فونت فارسی
      ),
    );
  }

  /// تغییر فونت برای متن انگلیسی
  Text englishFont({double fontSize = 14.0, Color color = Colors.black}) {
    return Text(
      this,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: 'urbanistRegular', // فونت انگلیسی
      ),
    );
  }

  /// تغییر فونت برای هر دو زبان
  Text customFont({double fontSize = 14.0, Color color = Colors.black}) {
    return Text(
      this,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontFamily: Intl.getCurrentLocale() == 'fa_IR'
            ? 'iranYekanRegular' // اگر زبان فارسی استفاده شده، از فونت فارسی استفاده می‌شود
            : 'urbanistRegular', // در غیر این صورت از فونت انگلیسی استفاده می‌شود
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "سلام".persianFont(),
              "Hello".englishFont(),
              "سلام Hello".customFont(),
            ],
          ),
        ),
      ),
    );
  }
}
