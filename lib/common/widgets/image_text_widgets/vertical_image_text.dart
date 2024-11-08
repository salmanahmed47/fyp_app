import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class EventVerticalImageText extends StatelessWidget {
  const EventVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = EventColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: EventSizes.spaceBtwItems),
        child: Column(
          // Cricular Icon
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(EventSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark ? EventColors.dark : EventColors.light),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? EventColors.light : EventColors.dark,
                ),
              ),
            ),
            const SizedBox(height: EventSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
