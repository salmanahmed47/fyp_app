import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/common/styles/shadows.dart';
import 'package:interestin_event_app/common/widgets/custom_shapes/containers/event_rounded_container.dart';
import 'package:interestin_event_app/common/widgets/images/rounded_image.dart';
import 'package:interestin_event_app/common/widgets/texts/event_title_text.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/image_strings.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import '../../../../features/events/screens/event_details/event_detail.dart';
import '../../icons/event_circular_icon.dart';
import '../../texts/event_brand_title_text_with_verified.dart';
import '../../texts/event_price_text.dart';

class EventCardVertical extends StatelessWidget {
  const EventCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);

    // Container with side padding, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const EventDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EventShadowStyle.verticalPoductShadow],
          borderRadius: BorderRadius.circular(EventSizes.productImageRadius),
          color: dark ? EventColors.darkerGrey : EventColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Whishlist Button
            EventRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(EventSizes.sm),
              backgroundColor: dark ? EventColors.dark : EventColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  EventRoundedImage(
                      imageUrl: EventImages.productImage1,
                      applyImageRadius: true,
                      backgroundColor:
                          dark ? EventColors.dark : EventColors.white),

                  // Sales Tag
                  Positioned(
                    top: 12,
                    left: 12,
                    child: EventRoundedContainer(
                      radius: EventSizes.sm,
                      backgroundColor: EventColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: EventSizes.sm, vertical: EventSizes.xs),
                      child: Text(
                        'Free',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: EventColors.black),
                      ),
                    ),
                  ),

                  // Whishlist Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: EventCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: EventSizes.spaceBtwItems / 3),

            // Event Details
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: EventSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EventTitleText(
                      title: 'Learn Flutter 📱',
                      smallSize: false,
                    ),
                    SizedBox(height: EventSizes.spaceBtwItems / 2),
                    EventBrandTitleWithVerifiedIcon(
                      title: 'Science Society',
                    ),
                    SizedBox(height: EventSizes.spaceBtwItems / 2),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: EventSizes.sm),
                  child: EventPriceText(
                    price: '2h 30m',
                  ),
                ),

                // Plus Icon
                Container(
                  decoration: const BoxDecoration(
                    color: EventColors.dark,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(EventSizes.cardRadiusMd),
                        bottomRight:
                            Radius.circular(EventSizes.productImageRadius)),
                  ),
                  child: const SizedBox(
                    width: EventSizes.iconLg * 1.2,
                    height: EventSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: EventColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
