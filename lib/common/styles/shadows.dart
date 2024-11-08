import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';

class EventShadowStyle {
  static final verticalPoductShadow = BoxShadow(
    color: EventColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: EventColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(2, 0),
  );
}
