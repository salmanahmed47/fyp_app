import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../images/circular_image.dart';

class EventUserProfileTile extends StatelessWidget {
  const EventUserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const EventCircularImage(
        image: EventImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Salman 🚀',
        style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: EventColors.white,
            ),
      ),
      subtitle: Text(
        'contact@salmanahmed.tech',
        style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: EventColors.white,
            ),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.edit,
            color: EventColors.white,
          )),
    );
  }
}
