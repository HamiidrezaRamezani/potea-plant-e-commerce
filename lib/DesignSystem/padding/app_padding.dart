import 'package:flutter/material.dart';

class AppPadding {
  AppPadding._();

  static paddingAllWidget(Widget child, double size) {
    return Padding(
      padding: EdgeInsets.all(size),
      child: child,
    );
  }

  static paddingOnlyWidget(Widget child, double right, double left,
      double top, double bottom) {
    return Padding(
      padding:
          EdgeInsets.only(right: right, left: left, bottom: bottom, top: top),
      child: child,
    );
  }
}
