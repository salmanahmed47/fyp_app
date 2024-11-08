import 'package:flutter/material.dart';
import 'package:interestin_event_app/utils/constants/colors.dart';

class EventMenuSettingTile extends StatelessWidget {
  const EventMenuSettingTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.trailling,
      this.onTap});

  final IconData icon;
  final String title, subTitle;
  final Widget? trailling;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: EventColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailling,
      onTap: onTap,
    );
  }
}
