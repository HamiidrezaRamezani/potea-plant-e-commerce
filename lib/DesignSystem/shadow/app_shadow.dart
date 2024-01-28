import 'package:flutter/material.dart';

class AppShadow {
  AppShadow._();

  static List<BoxShadow> shadow1 = [
    BoxShadow(
        color: const Color(0xFF04060F).withOpacity(0.08),
        offset: const Offset(0, 4),
        blurRadius: 60.0,
        spreadRadius: 0)
  ];

  static List<BoxShadow> shadow2 = [
    BoxShadow(
        color: const Color(0xFF04060F).withOpacity(0.05),
        offset: const Offset(0, 4),
        blurRadius: 60.0,
        spreadRadius: 0)
  ];

  static List<BoxShadow> shadow3 = [
    BoxShadow(
        color: const Color(0xFF04060F).withOpacity(0.08),
        offset: const Offset(0, 20),
        blurRadius: 100.0,
        spreadRadius: 0)
  ];

  static List<BoxShadow> shadow4 = [
    BoxShadow(
        color: const Color(0xFF01B763).withOpacity(0.25),
        offset: const Offset(4, 8),
        blurRadius: 24.0,
        spreadRadius: 0)
  ];

  static List<BoxShadow> shadow5 = [
    BoxShadow(
        color: const Color(0xFF01B763).withOpacity(0.20),
        offset: const Offset(4, 12),
        blurRadius: 32.0,
        spreadRadius: 0)
  ];

  static List<BoxShadow> shadow6 = [
    BoxShadow(
        color: const Color(0xFF01B763).withOpacity(0.20),
        offset: const Offset(4, 16),
        blurRadius: 32.0,
        spreadRadius: 0)
  ];
}
