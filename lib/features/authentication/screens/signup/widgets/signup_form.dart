import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:interestin_event_app/features/authentication/screens/signup/verify_email.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'terms_coditions_checkbox.dart';

class EventSignupForm extends StatelessWidget {
  const EventSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: TextField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: EventTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(
                width: EventSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: EventTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: EventSizes.spaceBtwInputFields,
          ),
          // Username
          const TextField(
            expands: false,
            decoration: InputDecoration(
              labelText: EventTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(
            height: EventSizes.spaceBtwInputFields,
          ),

          // Email
          const TextField(
            decoration: InputDecoration(
              labelText: EventTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(
            height: EventSizes.spaceBtwInputFields,
          ),
          // Phone Number
          const TextField(
            decoration: InputDecoration(
              labelText: EventTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(
            height: EventSizes.spaceBtwInputFields,
          ),

          // Password
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: EventTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: EventSizes.spaceBtwInputFields,
          ),

          // Terms & Conditions Checkbox
          const EventTermsAndConditionCheckbox(),
          const SizedBox(
            height: EventSizes.spaceBtwSections,
          ),

          // Sign up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const VerifyEmailScreen());
                },
                child: const Text(EventTexts.createAccount)),
          )
        ],
      ),
    );
  }
}
