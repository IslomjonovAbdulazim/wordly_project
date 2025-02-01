// lib/utils/themes/app_theme.dart
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      // primaryColor: ColorConstants.primaryColor,
      // scaffoldBackgroundColor: ColorConstants.backgroundColor,
      // appBarTheme: AppBarTheme(
      //   backgroundColor: ColorConstants.primaryColor,
      //   elevation: 0,
      // ),
      // Define additional theme properties here.
    );
  }

  // Define a dark theme if needed.
  static ThemeData get darkTheme {
    return ThemeData(
      // brightness: Brightness.dark,
      // primaryColor: ColorConstants.primaryColor,
      // Other theme customizations.
    );
  }
}
