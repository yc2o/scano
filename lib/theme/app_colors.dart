import 'package:flutter/material.dart';

class AppColors {
  // New primary colors from image
  static const Color primary = Color(0xFFBCD8ED);        // Primary - BCD8ED
  static const Color secondary = Color(0xFFFFCBE1);      // Secondary - FFCBE1
  static const Color tertiary = Color(0xFFD6E5BD);       // Tertiary - D6E5BD
  static const Color quaternary = Color(0xFFFAE1A8);     // Quaternary - FAE1A8
  static const Color quinary = Color(0xFFDBCCEB);        // Quinary - DBCCEB
  static const Color senary = Color(0xFFFFDAB5);         // Senary - FFDAB5
  static const Color black = Color(0xFF0D0A0B);       // Black - 0D0A0B
  static const Color white = Color(0xFFF3EFF5);       // White - F3EFF5
  static const Color gray = Color(0xFFA3A3A3);        // Gray - A3A3A3x

  //gradient colors
  static const LinearGradient bodyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.primary,
      AppColors.quinary,
    ],
  );
}