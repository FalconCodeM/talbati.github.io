import 'package:flutter/material.dart';

class AppColors {
  static const Color darkBackground = Color.fromRGBO(24, 24, 32, 1);
  static const Color gradient1 = Color.fromRGBO(187, 63, 221, 1);
  static const Color gradient2 = Color.fromRGBO(251, 109, 169, 1);
  static const Color gradient3 = Color.fromRGBO(255, 159, 124, 1);
  static const Color gradient4 = Color.fromRGBO(255, 206, 84, 1);
  static const Color gradient5 = Color.fromRGBO(255, 127, 80, 1);

  static const Color borderColor = Color.fromRGBO(52, 51, 67, 1);
  static const Color whiteColor = Colors.white;
  static const Color grayColor = Colors.grey;
  static const Color errorColor = Colors.redAccent;
  static const Color transparentColor = Colors.transparent;

  /// white background
  static const Color primaryBackground = Color.fromARGB(255, 255, 255, 255);

  /// grey background
  static const Color primarySecondaryBackground =
  Color.fromARGB(255, 247, 247, 249);

  /// main widget color blue
  static const Color primaryElement = Color.fromARGB(255, 61, 61, 216);

  /// main text color black
  static const Color primaryText = Color.fromARGB(255, 0, 0, 0);

  // video background color
  static const Color primary_bg = Color.fromARGB(210, 32, 47, 62);

  /// main widget text color white
  static const Color primaryElementText = Color.fromARGB(255, 255, 255, 255);

  // main widget text color grey
  static const Color primarySecondaryElementText =
  Color.fromARGB(255, 102, 102, 102);

  // main widget third color grey
  static const Color primaryThirdElementText =
  Color.fromARGB(255, 170, 170, 170);

  static const Color primaryFourthElementText =
  Color.fromARGB(255, 204, 204, 204);

  //state color
  static const Color primaryElementStatus = Color.fromARGB(255, 88, 174, 127);

  static const Color primaryElementBg = Color.fromARGB(255, 238, 121, 99);

  // Additional colors for Islamic app

  // Green colors, often associated with Islam
  static const Color islamicGreen = Color.fromRGBO(0, 128, 0, 1);
  static const Color lightIslamicGreen = Color.fromRGBO(144, 238, 144, 1);

  // Background colors
  static const Color lightBackground = Color.fromRGBO(240, 240, 240, 1);
  static const Color darkPrimaryBackground = Color.fromRGBO(48, 63, 159, 1);

  // Text colors
  static const Color secondaryText = Color.fromRGBO(255, 255, 255, 0.7);
  static const Color lightText = Color.fromRGBO(255, 255, 255, 0.9);
  static const Color darkText = Color.fromRGBO(0, 0, 0, 0.7);

  // Highlight colors
  static const Color highlight = Color.fromRGBO(255, 193, 7, 1);
  static const Color secondaryHighlight = Color.fromRGBO(255, 235, 59, 1);

  // Browns Color
  static const Color darkBrown = Color(0xFFA76B29);
  static const Color mediumDarkBrown = Color(0xFFC98A4B);
  static const Color mediumBrown = Color(0xFFD9A875);
  static const Color mediumLightBrown = Color(0xFFE8C19F);
  static const Color lightBrown = Color(0xFFF3D6C6);

  // Accent colors
  static const Color accentColor1 = Color.fromRGBO(3, 169, 244, 1);
  static const Color accentColor2 = Color.fromRGBO(0, 188, 212, 1);
  static const Color accentColor3 = Color.fromRGBO(0, 150, 136, 1);

  // Border colors
  static const Color lightBorder = Color.fromRGBO(224, 224, 224, 1);
  static const Color darkBorder = Color.fromRGBO(96, 125, 139, 1);

  // Gradient definitions
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [gradient1, gradient2],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [gradient3, gradient4],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient tertiaryGradient = LinearGradient(
    colors: [gradient4, gradient5],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient islamicGradient = LinearGradient(
    colors: [islamicGreen, lightIslamicGreen],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient primaryIslamicGradient = LinearGradient(
    colors: [darkBrown, mediumDarkBrown],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
