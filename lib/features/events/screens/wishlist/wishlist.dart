import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/common/widgets/appbar/appbar.dart';
import 'package:interestin_event_app/common/widgets/events/events_card/event_card_vertical.dart';
import 'package:interestin_event_app/common/widgets/icons/event_circular_icon.dart';
import 'package:interestin_event_app/common/widgets/layouts/grid_layout.dart';
import 'package:interestin_event_app/features/events/screens/home/home.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

class FavouritScreen extends StatelessWidget {
  const FavouritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EventAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          EventCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EventSizes.defaultSpace),
          child: Column(
            children: [
              EventGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const EventCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
