import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class EventTextFormFieldTheme {
  EventTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EventColors.darkGrey,
    suffixIconColor: EventColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: EventSizes.fontSizeMd, color: EventColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: EventSizes.fontSizeSm, color: EventColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: EventColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: EventColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: EventColors.darkGrey,
    suffixIconColor: EventColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: EventSizes.fontSizeMd, color: EventColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: EventSizes.fontSizeSm, color: EventColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: EventColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EventColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: EventColors.warning),
    ),
  );
}
