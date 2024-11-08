import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widgets.dart';
import 'circular_container.dart';

class EventPriamaryHeaderContainer extends StatelessWidget {
  const EventPriamaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EventCurvedWidget(
      child: Container(
          color: EventColors.primary,
          padding: const EdgeInsets.only(bottom: 0),
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: EventCircularContainer(
                  backgroundColor: EventColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: EventCircularContainer(
                  backgroundColor: EventColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          )),
    );
  }
}
