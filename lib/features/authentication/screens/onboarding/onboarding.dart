import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:interestin_event_app/utils/constants/image_strings.dart";
import "package:interestin_event_app/utils/constants/text_strings.dart";
import "package:interestin_event_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart";
import "package:interestin_event_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "../../controllers/onboarding_controller.dart";
import "widgets/onboarding_dot_navigation.dart";
import "widgets/onboarding_next_page.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: EventImages.onBoardingImage1,
                title: EventTexts.onBoardingTitle1,
                subTitle: EventTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: EventImages.onBoardingImage2,
                title: EventTexts.onBoardingTitle2,
                subTitle: EventTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: EventImages.onBoardingImage3,
                title: EventTexts.onBoardingTitle3,
                subTitle: EventTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const OnboardingSkip(),

          // Smooth Page indicator
          const OnboardingDotNavigation(),

          // Circular Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
