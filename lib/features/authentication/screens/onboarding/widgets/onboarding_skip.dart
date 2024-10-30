import 'package:flutter/material.dart';
import 'package:interestin_event_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import 'package:interestin_event_app/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EventDeviceUtils.getAppBarHeight(),
      right: EventSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text('Skip')),
    );
  }
}
