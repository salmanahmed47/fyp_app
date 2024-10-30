import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class EventChipTheme {
  EventChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: EventColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: EventColors.black),
    selectedColor: EventColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: EventColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: EventColors.darkerGrey,
    labelStyle: TextStyle(color: EventColors.white),
    selectedColor: EventColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: EventColors.white,
  );
}
