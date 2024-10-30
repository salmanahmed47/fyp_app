import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interestin_event_app/common/widgets/login_signup/social_buttons.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            EventSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                EventTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: EventSizes.spaceBtwSections,
              ),

              //   Form
              const EventSignupForm(),

              const SizedBox(
                height: EventSizes.spaceBtwSections,
              ),
              //   Divider
              EventFormDivider(
                  dividerText: EventTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: EventSizes.spaceBtwSections,
              ),
              //   Social Buttons
              const EventSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
