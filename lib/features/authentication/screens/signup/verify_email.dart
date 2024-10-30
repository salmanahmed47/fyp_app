import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interestin_event_app/common/widgets/success_screen/success_screen.dart';
import 'package:interestin_event_app/features/authentication/screens/login/login.dart';
import 'package:interestin_event_app/utils/constants/sizes.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(EventSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(
              image: const AssetImage(EventImages.deliveredEmailIllustration),
              width: EventHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: EventSizes.spaceBtwSections,
            ),

            // Title & SubTitle
            Text(
              EventTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: EventSizes.spaceBtwItems,
            ),
            Text(
              'contact@salmanahmed.tech',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: EventSizes.spaceBtwItems,
            ),
            Text(
              EventTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: EventSizes.spaceBtwSections,
            ),

            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                      image: EventImages.staticSuccessIllustration,
                      title: EventTexts.yourAccountCreatedTitle,
                      subTitle: EventTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    )),
                child: const Text(EventTexts.eContinue),
              ),
            ),
            const SizedBox(
              height: EventSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(EventTexts.resendEmail),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
