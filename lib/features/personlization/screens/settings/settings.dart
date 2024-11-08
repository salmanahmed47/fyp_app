import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/common/widgets/appbar/appbar.dart';
import 'package:interestin_event_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:interestin_event_app/common/widgets/layouts/list_tiles/settings_menu_tile.dart';
import 'package:interestin_event_app/common/widgets/texts/section_heading.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';

import '../../../../common/widgets/layouts/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';
import '../profile/profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            EventPriamaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  EventAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: EventColors.white),
                    ),
                  ),
                  // User Profile Card
                  EventUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),

                  const SizedBox(
                    height: EventSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            // Body of the settings screen
            Padding(
              padding: const EdgeInsets.all(EventSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Setting
                  const EventSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: EventSizes.spaceBtwItems),

                  EventMenuSettingTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subTitle: 'Set Address',
                    onTap: () {},
                  ),
                  EventMenuSettingTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Events',
                      subTitle: 'View Events',
                      onTap: () {}),
                  EventMenuSettingTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to register bank account',
                    onTap: () {},
                  ),
                  EventMenuSettingTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupens',
                      subTitle: 'List of All the discounted coupens',
                      onTap: () {}),
                  EventMenuSettingTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subTitle: 'Set any kinf of Notification message',
                    onTap: () {},
                  ),

                  // App Setting
                  const SizedBox(height: EventSizes.spaceBtwSections),
                  const EventSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: EventSizes.spaceBtwItems),

                  EventMenuSettingTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                    onTap: () {},
                  ),
                  EventMenuSettingTile(
                    icon: Iconsax.lamp_charge,
                    title: 'Interest',
                    subTitle: 'Set recommendation based on Interest',
                    onTap: () {},
                    trailling: Switch(value: true, onChanged: (value) {}),
                  ),
                  EventMenuSettingTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    onTap: () {},
                    trailling: Switch(value: true, onChanged: (value) {}),
                  ),
                  EventMenuSettingTile(
                    icon: Iconsax.image,
                    title: 'HD Quality Image',
                    subTitle: 'Set Image Quality',
                    onTap: () {},
                    trailling: Switch(value: false, onChanged: (value) {}),
                  ),

                  // Logout Button
                  const SizedBox(height: EventSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: EventSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
