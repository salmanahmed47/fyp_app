import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class EventSocialButtons extends StatelessWidget {
  const EventSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: EventColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: EventSizes.iconMd,
                  width: EventSizes.iconMd,
                  image: AssetImage(EventImages.google))),
        ),
        const SizedBox(
          width: EventSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: EventColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: EventSizes.iconMd,
                  width: EventSizes.iconMd,
                  image: AssetImage(EventImages.facebook))),
        ),
      ],
    );
  }
}
