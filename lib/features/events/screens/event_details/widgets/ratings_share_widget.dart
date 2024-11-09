import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class EventRatingShare extends StatelessWidget {
  const EventRatingShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Ratings
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: EventSizes.spaceBtwItems / 2,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '4.5',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(199)')
                ],
              ),
            ),
          ],
        ),
        // Share Button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: EventSizes.iconMd),
        )
      ],
    );
  }
}
