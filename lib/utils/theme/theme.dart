import 'package:app/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:app/utils/theme/custom_themes/chip_theme.dart';
import 'package:app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: ATextTheme.lightTextTheme,
    chipTheme: AChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    checkboxTheme: ACheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: ATextFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: ATextTheme.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    chipTheme: AChipTheme.darkChipTheme,
    checkboxTheme: ACheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: ATextFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
