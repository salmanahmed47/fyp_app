import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EventTermsAndConditionCheckbox extends StatelessWidget {
  const EventTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: EventSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${EventTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${EventTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: dark ? EventColors.white : EventColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? EventColors.white : EventColors.primary)),
          TextSpan(
              text: '${EventTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: EventTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodySmall!.apply(
                  color: dark ? EventColors.white : EventColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? EventColors.white : EventColors.primary)),
        ]))
      ],
    );
  }
}
