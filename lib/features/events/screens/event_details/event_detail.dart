import 'package:flutter/material.dart';
import 'package:interestin_event_app/features/events/screens/event_details/widgets/event_metadata.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
// import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import 'widgets/event_details_image_slider.dart';
import 'widgets/ratings_share_widget.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = EventHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1 - Event Images Slider
            const EventImageSlider(),

            // 2 - Event Details
            Padding(
              padding: const EdgeInsets.only(
                  right: EventSizes.defaultSpace,
                  left: EventSizes.defaultSpace,
                  bottom: EventSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Share
                  EventRatingShare(),

                  // Event Details
                  EventMetadata(),

                  // Attributes

                  // Checkout Button

                  // Description

                  // Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
