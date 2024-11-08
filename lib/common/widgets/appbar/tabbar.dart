import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class EventTabBar extends StatelessWidget implements PreferredSizeWidget {
  const EventTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EventHelperFunctions.isDarkMode(context);
    return TabBar(
      isScrollable: true,
      tabs: tabs,
      indicatorColor: EventColors.primary,
      unselectedLabelColor: EventColors.darkGrey,
      labelColor: dark ? EventColors.white : EventColors.primary,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EventDeviceUtils.getAppBarHeight());
}
