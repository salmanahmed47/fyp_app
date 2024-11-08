import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class EventCircularIcon extends StatelessWidget {
  // A Custom Circular Icon widget with a background color

  // Properties are:

  // Container

  // Icons

  const EventCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = EventSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : EventHelperFunctions.isDarkMode(context)
                ? EventColors.dark.withOpacity(0.9)
                : EventColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
