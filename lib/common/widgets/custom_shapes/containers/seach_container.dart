import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class EventSearchContainer extends StatelessWidget {
  const EventSearchContainer(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.showBackground = true,
      this.showBorder = true,
      this.onTap,
      this.padding =
          const EdgeInsets.symmetric(horizontal: EventSizes.defaultSpace)});

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: EventDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(EventSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? EventColors.dark
                    : EventColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(EventSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(
                    color: Colors.grey,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: EventColors.darkerGrey,
              ),
              const SizedBox(width: EventSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
