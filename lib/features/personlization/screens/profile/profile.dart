import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/common/widgets/appbar/appbar.dart';
import 'package:interestin_event_app/common/widgets/images/circular_image.dart';
import 'package:interestin_event_app/common/widgets/texts/section_heading.dart';
import 'package:interestin_event_app/utils/constants/image_strings.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EventAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EventSizes.defaultSpace),
          child: Column(children: [
            // Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const EventCircularImage(
                    image: EventImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'))
                ],
              ),
            ),

            // Details of the user
            const SizedBox(height: EventSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: EventSizes.spaceBtwItems),

            // Heading Profile Info
            const EventSectionHeading(
                title: 'Profile Information', showActionButton: false),
            const SizedBox(height: EventSizes.spaceBtwItems),

            EventProfileMenu(
              title: 'Name',
              value: 'Salman Ahmed',
              onPressed: () {},
            ),
            EventProfileMenu(
              title: 'User Name',
              value: 'salman_ahmed_47',
              onPressed: () {},
            ),

            const SizedBox(height: EventSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: EventSizes.spaceBtwItems),

            // Heading Personal Info
            const EventSectionHeading(
                title: 'Personal Information', showActionButton: false),
            const SizedBox(
              height: EventSizes.spaceBtwItems,
            ),

            EventProfileMenu(
              title: 'User ID',
              value: '1234',
              icon: Iconsax.copy,
              onPressed: () {},
            ),
            EventProfileMenu(
              title: 'E-mail',
              value: 'contact@salmanahmed.tech',
              onPressed: () {},
            ),
            EventProfileMenu(
              title: 'Phone No.',
              value: '+92 318 1066430',
              onPressed: () {},
            ),
            EventProfileMenu(
              title: 'Gender',
              value: 'Male',
              onPressed: () {},
            ),
            EventProfileMenu(
              title: 'Date Of Birth',
              value: '15 May 2002',
              onPressed: () {},
            ),

            const Divider(),
            const SizedBox(height: EventSizes.spaceBtwItems),

            Center(
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
