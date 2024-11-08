import 'package:flutter/material.dart';
import 'package:interestin_event_app/common/widgets/events/events_card/event_card_vertical.dart';
import 'package:interestin_event_app/common/widgets/layouts/grid_layout.dart';
import 'package:interestin_event_app/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/society/society_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class EventCategoryTab extends StatelessWidget {
  const EventCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(EventSizes.defaultSpace),
            child: Column(
              children: [
                // Societies
                const SocietyShowcase(
                  images: [
                    EventImages.productImage1,
                    EventImages.productImage2,
                    EventImages.productImage3
                  ],
                ),
                const SizedBox(height: EventSizes.spaceBtwItems),
                // Events
                EventSectionHeading(
                  title: 'You might Like',
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(height: EventSizes.spaceBtwItems),

                EventGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const EventCardVertical()),
                const SizedBox(height: EventSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
