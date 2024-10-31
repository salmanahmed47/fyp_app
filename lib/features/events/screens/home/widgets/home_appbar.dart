import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/text_strings.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/events/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';

class EventHomeAppbar extends StatelessWidget {
  const EventHomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EventAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            EventTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: EventColors.grey),
          ),
          Text(
            EventTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: EventColors.white),
          ),
        ],
      ),
      actions: [
        EventCartCounterIcon(onPressed: () {}, iconColor: EventColors.white)
      ],
    );
  }
}
