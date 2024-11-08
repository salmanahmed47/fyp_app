import 'package:flutter/material.dart';
import 'package:interestin_event_app/common/widgets/events/events_card/event_card_vertical.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/seach_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return Scaffold(
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
                    padding:
                        const EdgeInsets.only(left: EventSizes.defaultSpace),
                    child: Column(
                      children: [
                        EventSectionHeading(
                          title: 'Popular Societies 🔥',
                          showActionButton: false,
                          textColor:
                              dark ? EventColors.white : EventColors.black,
                        ),
                        const SizedBox(height: EventSizes.spaceBtwItems),
                        // Categories
                        const EventHomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: EventSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            // Body of the home screen
            Padding(
                padding: const EdgeInsets.all(EventSizes.defaultSpace),
                child: Column(
                  children: [
                    // Slider
                    const EventPromoSlider(
                      banners: [EventImages.banner1, EventImages.banner2],
                    ),
                    const SizedBox(height: EventSizes.spaceBtwSections),

                    // Hedaing
                    EventSectionHeading(
                      title: 'Popular Events 🔥',
                      onPressed: () {},
                      showActionButton: true,
                      textColor: dark ? EventColors.white : EventColors.black,
                    ),
                    const SizedBox(height: EventSizes.spaceBtwItems),

                    // Event List Here
                    EventGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const EventCardVertical(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
