import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    fontFamily: "Poppins",
    colorScheme: AppColors.darkColorScheme,
    appBarTheme: AppBarTheme(
      surfaceTintColor: Colors.transparent,
    ),
  );
}
