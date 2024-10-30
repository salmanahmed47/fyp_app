import 'package:flutter/material.dart';

import 'curved_edges.dart';

class EventCurvedWidget extends StatelessWidget {
  const EventCurvedWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: EventCustomCurvedEdges(),
      child: child,
    );
  }
}
