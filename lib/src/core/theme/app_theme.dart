// src/core/theme/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static const Color _matrixBlack = Color(0xFF000000);
  static const Color _matrixGreen = Color(0xFF00FF5F); // Neon-Grün
  static const Color _matrixGreenSoft = Color(0xFF00C853); // etwas dunkler

  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _matrixGreen,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: _matrixBlack,
      cardColor: _matrixBlack,
      textTheme: Typography.whiteCupertino.apply(
        bodyColor: const Color(0xFFE5E7EB), // helles Grau
        displayColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: _matrixBlack,
        elevation: 0,
      ),
      dividerColor: _matrixGreenSoft.withOpacity(0.4),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: _matrixGreen,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(999),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _matrixGreen,
          side: BorderSide(
            color: _matrixGreenSoft.withOpacity(0.8),
            width: 1.3,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(999),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: _matrixGreenSoft),
      ),
      iconTheme: const IconThemeData(color: _matrixGreen),
    );
  }
}
