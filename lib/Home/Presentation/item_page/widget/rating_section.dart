import 'package:dribble_design_marketplace/Core/Utils/extension/typography_extension.dart';
import 'package:dribble_design_marketplace/Home/Data/models/cart_item.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Routing/dimensions.dart';
import '../../../../Core/theme/colors.dart';
import '../../../../gen/assets.gen.dart';

class RatingsSection extends StatelessWidget {
  const RatingsSection({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text.rich(
              TextSpan(
                text: "4.9",
                style: context.headline1,
                children: [
                  const TextSpan(
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
            const YBox(24),
            const Text("2.3k+ Reviews"),
            const XBox(16),
          ],
        ),
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
                    const XBox(8),
                    Text(
                      "${index + 1}",
                      style: const TextStyle(color: kCaptionColor),
                    ),
                    const XBox(8),
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
                    const XBox(8),
                    const Text("1.5k"),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
