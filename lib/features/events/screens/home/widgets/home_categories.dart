import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class EventHomeCategories extends StatelessWidget {
  const EventHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return EventVerticalImageText(
            image: EventImages.shoeIcon,
            title: 'Arts & Crafts',
            onTap: () {
              print('Arts & Crafts');
            },
          );
        },
      ),
    );
  }
}
