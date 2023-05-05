import 'package:flutter/material.dart';

import '../../../../Core/Routing/dimensions.dart';
import '../../../../Core/theme/colors.dart';
import '../../../../gen/assets.gen.dart';
import 'review_section.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(thickness: 0.8),
        const YBox(16),
        Row(
          children: [
            const CircleAvatar(
              radius: 12,
              backgroundColor: Colors.black,
            ),
            const XBox(4),
            const Text("Annie Le***hart"),
            const Spacer(),
            SizedBox(
              height: 15,
              child: Assets.svg.favouriteSolid.svg(),
            ),
            const XBox(4),
            const Text("5.0"),
            const XBox(16),
            const Icon(Icons.more_horiz_outlined)
          ],
        ),
        const YBox(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ReviewPill(text: "Product in good condition"),
            ReviewPill(text: "Very fast delivery"),
            ReviewPill(text: "(Fast seller response"),
          ],
        ),
        const YBox(8),
        const Text(
            "According to my expectations. This is the best.\nThank you"),
        const YBox(16),
        Row(
          children: const [
            Icon(
              Icons.thumb_up,
              color: kPrimaryColor,
              size: 18,
            ),
            XBox(4),
            Text(
              "Helpful ?",
              style: TextStyle(color: kPrimaryColor),
            ),
            Spacer(),
            Text("Yesterdays", style: TextStyle(color: kCaptionColor))
          ],
        ),
        const YBox(16),
      ],
    );
  }
}
