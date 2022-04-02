import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFE6E4D8),
    backgroundColor: const Color(0xFFF2EFE6),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

extension ThemeExtras on ThemeData {
  Color get btnColor => const Color(0xFF56AB69);
}
