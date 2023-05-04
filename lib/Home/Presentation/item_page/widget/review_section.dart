import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/Utils/extension/typography_extension.dart';
import 'package:flutter/material.dart';

import '../../../../Core/theme/colors.dart';
import '../../../../Core/theme/theme.dart';
import '../../../../gen/assets.gen.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        YBox(32),
        Text("Reviews & Ratings"),
        YBox(8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: "4.9",
                    style: context.headline1,
                    children: [
                      TextSpan(
                        text: "/5.0",
                        style: TextStyle(
                          color: kCaptionColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      SizedBox(
                        height: 12,
                        width: 15,
                        child: Assets.svg.favouriteSolid.svg(),
                      )
                  ],
                ),
                YBox(24),
                Text("2.3k+ Reviews")
              ],
            ),
            XBox(16),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                reverse: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 12,
                          width: 15,
                          child: Assets.svg.favouriteSolid.svg(),
                        ),
                        XBox(8),
                        Text(
                          "${index + 1}",
                          style: const TextStyle(color: kCaptionColor),
                        ),
                        XBox(8),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              height: 8,
                              child: LinearProgressIndicator(
                                value: (0.4 * index / 1),
                                backgroundColor: kDefaultBackground,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                        XBox(8),
                        Text("1.5k"),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        YBox(16),
        Text("Reviews with images & videos"),
        YBox(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 4; i++)
              Container(color: kDefaultBackground, height: 60, width: 80),
          ],
        ),
        YBox(16),
        Divider(thickness: 0.8),
        YBox(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Top Reviews"),
                YBox(16),
                Text("Showing 3 of 2.3k+ reviews"),
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    AppTheme.getMaterialProperty<Color>(kDefaultBackground),
                shape: AppTheme.getMaterialProperty<OutlinedBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.black12),
                )),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Text("Popular", style: TextStyle(color: Colors.black87)),
                  XBox(16),
                  Transform.rotate(
                    angle: 3.14 / 2,
                    child: Icon(
                      Icons.chevron_right,
                      color: kCaptionColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        YBox(16),
        Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                ),
                XBox(4),
                Text("Annie Le***hart"),
                Spacer(),
                SizedBox(
                  height: 15,
                  child: Assets.svg.favouriteSolid.svg(),
                ),
                XBox(4),
                Text("5.0"),
                XBox(16),
                Icon(
                  Icons.more_horiz_outlined,
                )
              ],
            ),
            Row(
              children: [
                ReviewPill(),
                Container(
                  child: Text("Very fast delivery"),
                ),
                Container(
                  child: Text("(Fast seller response"),
                ),
              ],
            ),
            Text("According to my expectations. This is the best.Thank you"),
            Row(
              children: [
                Icon(Icons.thumb_up),
                Text("Helpful ?"),
                Text("Yesterdays")
              ],
            )
          ],
        )
      ],
    );
  }
}

class ReviewPill extends StatelessWidget {
  const ReviewPill({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        color: kPrimaryColor.withOpacity(0.25),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Text(
          "Product in good condition",
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
    );
  }
}
