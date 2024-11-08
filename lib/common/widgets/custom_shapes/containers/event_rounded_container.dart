import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

class EventRoundedContainer extends StatelessWidget {
  const EventRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = EventSizes.cardRadiusLg,
      this.backgroundColor = EventColors.white,
      this.borderColor = EventColors.borderPrimary,
      this.showBorder = false,
      this.padding,
      this.margin,
      this.child});

  final double? width;
  final double? height;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;
  final bool showBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
