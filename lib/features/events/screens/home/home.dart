import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/seach_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.only(left: EventSizes.defaultSpace),
                  child: Column(
                    children: [
                      const EventSectionHeading(
                        title: 'Popular Categries',
                        showActionButton: false,
                      ),
                      const SizedBox(height: EventSizes.spaceBtwItems),
                      // Categories
                      ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                padding: const EdgeInsets.all(EventSizes.sm),
                                decoration: BoxDecoration(
                                  color: EventColors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              )
                            ],
                          );
                        },
                      )
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
