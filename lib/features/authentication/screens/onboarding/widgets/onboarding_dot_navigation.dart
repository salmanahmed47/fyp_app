import 'package:flutter/material.dart';
import 'package:interestin_event_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = EventHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: EventDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: EventSizes.defaultSpace,
      child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigation,
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? EventColors.light : EventColors.dark,
            dotHeight: 6,
          )),
    );
  }
}
