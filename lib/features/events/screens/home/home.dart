import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/image_strings.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/seach_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          EventPriamaryHeaderContainer(
            child: Column(
              children: [
                // Appbar
                const EventHomeAppbar(),
                const SizedBox(height: EventSizes.spaceBtwSections),

                // Searchbar
                const EventSearchContainer(
                  text: 'Search for Events',
                ),
                const SizedBox(height: EventSizes.spaceBtwSections),
                // Heading
                Padding(
                  padding: const EdgeInsets.only(left: EventSizes.defaultSpace),
                  child: Column(
                    children: [
                      const EventSectionHeading(
                        title: 'Popular Societies 🔥',
                        showActionButton: false,
                        textColor: EventColors.white,
                      ),
                      const SizedBox(height: EventSizes.spaceBtwItems),
                      // Categories
                      EventHomeCategories()
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
