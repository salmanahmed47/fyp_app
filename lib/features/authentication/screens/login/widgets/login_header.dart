import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class EventLoginHeader extends StatelessWidget {
  const EventLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? EventImages.lightAppLogo : EventImages.darkAppLogo),
        ),
        Text(EventTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: EventSizes.sm),
        Text(EventTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
