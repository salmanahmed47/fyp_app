import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interestin_event_app/common/styles/spacing_styles.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EventSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and Subtitle
              const EventLoginHeader(),

              // Form
              const EventLoginForm(),

              // Divider
              EventFormDivider(
                  dividerText: EventTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: EventSizes.spaceBtwSections,
              ),
              // Footer
              const EventSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
