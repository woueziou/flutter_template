import 'package:flutter/material.dart';

import 'color_schemes.g.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    // textTheme: GoogleFonts.nunitoTextTheme(),
  );
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    // textTheme: GoogleFonts.nunitoTextTheme(),
  );
}
