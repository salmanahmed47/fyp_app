import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import '../../../../../common/widgets/icons/event_circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EventImageSlider extends StatelessWidget {
  const EventImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return EventCurvedWidget(
      child: Container(
        color: dark ? EventColors.darkerGrey : EventColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(EventSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(EventImages.productImage1))),
              ),
            ),
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: EventSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    separatorBuilder: (_, __) => const SizedBox(
                          width: EventSizes.spaceBtwItems,
                        ),
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => EventRoundedImage(
                        width: 80,
                        backgroundColor:
                            dark ? EventColors.dark : EventColors.white,
                        border: Border.all(color: EventColors.primary),
                        padding: const EdgeInsets.all(EventSizes.sm),
                        imageUrl: EventImages.productImage3)),
              ),
            ),

            // App bar
            const EventAppBar(
              showBackArrow: true,
              actions: [
                EventCircularIcon(
                  icon: Iconsax.heart,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
