import 'package:flutter/material.dart';
import 'package:interestin_event_app/common/widgets/appbar/appbar.dart';
import 'package:interestin_event_app/common/widgets/appbar/tabbar.dart';
import 'package:interestin_event_app/common/widgets/events/cart/cart_menu_icon.dart';
import 'package:interestin_event_app/common/widgets/layouts/grid_layout.dart';
import 'package:interestin_event_app/common/widgets/texts/section_heading.dart';
import 'package:interestin_event_app/features/events/screens/events/widgets/category_tab.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/seach_container.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/event_card.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EventAppBar(
          title: Text(
            'Events 📅',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            EventCartCounterIcon(
              onPressed: () {},
              iconColor: dark ? EventColors.white : EventColors.black,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? EventColors.black : EventColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(EventSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // SearchBar
                        const SizedBox(
                          height: EventSizes.spaceBtwItems,
                        ),
                        const EventSearchContainer(
                          showBackground: false,
                          text: 'Search for Events',
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: EventSizes.spaceBtwSections,
                        ),

                        // Featured Societies
                        EventSectionHeading(
                          title: 'Featured Societies',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: EventSizes.spaceBtwItems / 1.5,
                        ),
                        // Societies Grid
                        EventGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const EventBrandCard(
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),

                  // Department Tabs
                  bottom: const EventTabBar(
                    tabs: [
                      Tab(
                        child: Text('Coding'),
                      ),
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Freelancing'),
                      ),
                      Tab(
                        child: Text('Business'),
                      ),
                      Tab(
                        child: Text('Music'),
                      ),
                    ],
                  ),
                ),
              ];
            },

            // Body
            body: const TabBarView(
              children: [
                EventCategoryTab(),
                EventCategoryTab(),
                EventCategoryTab(),
                EventCategoryTab(),
                EventCategoryTab()
              ],
            )),
      ),
    );
  }
}
