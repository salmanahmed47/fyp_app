import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class EventElevatedButtonTheme {
  EventElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EventColors.light,
      backgroundColor: EventColors.primary,
      disabledForegroundColor: EventColors.darkGrey,
      disabledBackgroundColor: EventColors.buttonDisabled,
      side: const BorderSide(color: EventColors.primary),
      padding: const EdgeInsets.symmetric(vertical: EventSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: EventColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(EventSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EventColors.light,
      backgroundColor: EventColors.primary,
      disabledForegroundColor: EventColors.darkGrey,
      disabledBackgroundColor: EventColors.darkerGrey,
      side: const BorderSide(color: EventColors.primary),
      padding: const EdgeInsets.symmetric(vertical: EventSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: EventColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(EventSizes.buttonRadius)),
    ),
  );
}
