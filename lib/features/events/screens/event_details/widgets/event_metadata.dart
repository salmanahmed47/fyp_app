import 'package:flutter/material.dart';
import 'package:interestin_event_app/common/widgets/images/circular_image.dart';
import 'package:interestin_event_app/common/widgets/texts/event_brand_title_text_with_verified.dart';
import 'package:interestin_event_app/common/widgets/texts/event_price_text.dart';
import 'package:interestin_event_app/common/widgets/texts/event_title_text.dart';
import 'package:interestin_event_app/utils/constants/enums.dart';
import 'package:interestin_event_app/utils/constants/image_strings.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/event_rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class EventMetadata extends StatelessWidget {
  const EventMetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale
        Row(
          children: [
            // Sale Tag
            EventRoundedContainer(
              radius: EventSizes.sm,
              backgroundColor: EventColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: EventSizes.sm, vertical: EventSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: EventColors.black),
              ),
            ),
            const SizedBox(
              width: EventSizes.spaceBtwItems,
            ),

            // Price
            Text(
              '\Rs. 250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: EventSizes.spaceBtwItems,
            ),
            const EventPriceText(
              price: '120',
              isLarge: true,
            )
          ],
        ),

        const SizedBox(
          height: EventSizes.spaceBtwItems / 1.5,
        ),

        // title
        const EventTitleText(title: 'Learn To Code 💻'),
        const SizedBox(
          height: EventSizes.spaceBtwItems / 1.5,
        ),
        // Available Seats
        Row(
          children: [
            const EventTitleText(title: 'Available Seats 🪑'),
            const SizedBox(
              width: EventSizes.spaceBtwItems,
            ),
            Text(
              '83',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: EventSizes.spaceBtwItems / 1.5,
        ),

        // Date & Time

        // Location

        // Society
        Row(
          children: [
            EventCircularImage(
              image: EventImages.cosmeticsIcon,
              height: 32,
              width: 32,
              overlayColor: dark ? EventColors.white : EventColors.black,
            ),
            const EventBrandTitleWithVerifiedIcon(
              title: 'Science Society',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
