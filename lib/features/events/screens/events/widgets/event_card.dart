import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/event_rounded_container.dart';
import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../common/widgets/texts/event_brand_title_text_with_verified.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EventBrandCard extends StatelessWidget {
  const EventBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: EventRoundedContainer(
        padding: const EdgeInsets.all(EventSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  Icon
            Flexible(
              child: EventCircularImage(
                isNetworkImage: false,
                image: EventImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? EventColors.white : EventColors.black,
              ),
            ),
            const SizedBox(
              width: EventSizes.spaceBtwItems / 2,
            ),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EventBrandTitleWithVerifiedIcon(
                    title: 'Science Society',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '10 Events',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
