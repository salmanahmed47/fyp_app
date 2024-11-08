import 'package:flutter/material.dart';

import '../../../features/events/screens/events/widgets/event_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/event_rounded_container.dart';

class SocietyShowcase extends StatelessWidget {
  const SocietyShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return EventRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(EventSizes.md),
      borderColor: EventColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: EventSizes.spaceBtwItems),
      child: Column(
        children: [
          // Society With Events
          const EventBrandCard(showBorder: false),
          const SizedBox(height: EventSizes.spaceBtwItems),
          // Society Top 3 Events
          Row(
            children: images
                .map((image) => societyTopEventImagesWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget societyTopEventImagesWidget(String image, context) {
    return Expanded(
      child: EventRoundedContainer(
        height: 100,
        backgroundColor: EventHelperFunctions.isDarkMode(context)
            ? EventColors.darkerGrey
            : EventColors.light,
        margin: const EdgeInsets.only(right: EventSizes.sm),
        padding: const EdgeInsets.all(EventSizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
