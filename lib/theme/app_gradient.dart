import 'package:flutter/material.dart';
import 'colors.dart';

class AppGradients {
  // Body gradient from the image (light blue to lighter blue)
  static const LinearGradient bodyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFBCD8ED),  // Starting with primary color
      Color(0xFFD8E9F7),  // Fading to a lighter version
    ],
  );

  // Primary to Secondary gradient
  static const LinearGradient primaryToSecondary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColorsNew.primary,
      AppColorsNew.secondary,
    ],
  );

  // Cool gradient (blue to purple)
  static const LinearGradient coolGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColorsNew.primary,      // Blue
      AppColorsNew.quinary,      // Purple
    ],
  );

  // Warm gradient (quaternary to senary)
  static const LinearGradient warmGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColorsNew.quaternary,   // Yellow-ish
      AppColorsNew.senary,       // Orange/peach
    ],
  );

  // Nature gradient (tertiary to quaternary)
  static const LinearGradient natureGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColorsNew.tertiary,     // Green-ish
      AppColorsNew.quaternary,   // Yellow-ish
    ],
  );

  // Sunset gradient (secondary to senary)
  static const LinearGradient sunsetGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColorsNew.secondary,    // Pink
      AppColorsNew.senary,       // Peach
    ],
  );

  // Full palette gradient (uses all primary colors)
  static const LinearGradient fullPalette = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColorsNew.primary,
      AppColorsNew.secondary, 
      AppColorsNew.tertiary,
      AppColorsNew.quaternary,
      AppColorsNew.quinary,
      AppColorsNew.senary,
    ],
  );

  // Dark mode gradient
  static const LinearGradient darkMode = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColorsNew.blackNew,
      Color(0xFF252525),
    ],
  );

  // Custom gradients with stops (like the one shown in the image)
  static const LinearGradient twoStopGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFBCD8ED),   // From the image: BCD8ED at 0%
      Color(0xFFDBCCEB),   // From the image: DBCCEB at 100%
    ],
    stops: [0.0, 1.0],
  );
}