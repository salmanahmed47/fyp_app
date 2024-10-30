import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

class EventSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: EventSizes.appBarHeight,
    left: EventSizes.defaultSpace,
    right: EventSizes.defaultSpace,
    bottom: EventSizes.defaultSpace,
  );
}
