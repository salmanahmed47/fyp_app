import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/theme/custom_themes/text_field_theme.dart';
import '../../utils/theme/custom_themes/text_theme.dart';
import '../../utils/theme/custom_themes/elevated_button_theme.dart';
import '../../utils/theme/custom_themes/outlined_button_theme.dart';
import '../../utils/theme/custom_themes/checkbox_theme.dart';
import '../../utils/theme/custom_themes/chip_theme.dart';
import '../../utils/theme/custom_themes/appbar_theme.dart';
import '../../utils/theme/custom_themes/bottom_sheet_theme.dart';
import '../constants/colors.dart';

class EventAppTheme {
  EventAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Jakarta',
    disabledColor: EventColors.grey,
    brightness: Brightness.light,
    primaryColor: EventColors.primary,
    textTheme: EventTextTheme.lightTextTheme,
    chipTheme: EventChipTheme.lightChipTheme,
    scaffoldBackgroundColor: EventColors.white,
    appBarTheme: EventAppBarTheme.lightAppBarTheme,
    checkboxTheme: EventCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EventBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EventElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EventOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: EventTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Jakarta',
    disabledColor: EventColors.grey,
    brightness: Brightness.dark,
    primaryColor: EventColors.primary,
    textTheme: EventTextTheme.darkTextTheme,
    chipTheme: EventChipTheme.darkChipTheme,
    scaffoldBackgroundColor: EventColors.black,
    appBarTheme: EventAppBarTheme.darkAppBarTheme,
    checkboxTheme: EventCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: EventBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: EventElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EventOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: EventTextFormFieldTheme.darkInputDecorationTheme,
  );
}
