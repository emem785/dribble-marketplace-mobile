import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../../Core/theme/colors.dart';
import '../../../../gen/assets.gen.dart';

const List<String> descriptions = [
  "Long-sleeve dress shirt in classic fit featuring button-down collar",
  "Patch Pocket on Left Chest",
  "Durable Combination Cotton Fabric",
  "Comfortable and quality dress shirt",
  "Go To Classic button down shirt for all special occasions",
];

const List<String> shippingInformation = [
  "Long-sleeve dress shirt in classic fit featuring button-down collar",
  "Patch Pocket on Left Chest",
  "Durable Combination Cotton Fabric",
  "Comfortable and quality dress shirt",
  "Go To Classic button down shirt for all special occasions",
];

class AboutItemSection extends StatelessWidget {
  const AboutItemSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const YBox(16),
        GridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 30,
          ),
          children: [
            Row(
              children: [
                const Text("Brand: ", style: TextStyle(color: kCaptionColor)),
                const Text("ChArmkpR"),
              ],
            ),
            Row(
              children: [
                const Text("Color: ", style: TextStyle(color: kCaptionColor)),
                const Text("Aprikot"),
              ],
            ),
            Row(
              children: [
                const Text("Category: ",
                    style: TextStyle(color: kCaptionColor)),
                const Text("Casual Shirt"),
              ],
            ),
            Row(
              children: [
                const Text("Material: ",
                    style: TextStyle(color: kCaptionColor)),
                const Text("Polyester"),
              ],
            ),
            Row(
              children: [
                const Text("Condition: ",
                    style: TextStyle(color: kCaptionColor)),
                const Text("New"),
              ],
            ),
            Row(
              children: [
                const Text("Heavy: ", style: TextStyle(color: kCaptionColor)),
                const Text("200 g"),
              ],
            ),
          ],
        ),
        const YBox(8),
        const Divider(thickness: 0.8),
        const YBox(24),
        const Text(
          "Description:",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const YBox(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: descriptions.length,
            itemBuilder: (context, index) {
              final description = descriptions[index];
              return Text(
                "• $description",
                style: const TextStyle(color: kCaptionColor),
              );
            },
          ),
        ),
        const YBox(16),
        const Text(
          "Chat us if there is anything you need to ask about the product :)",
          style: TextStyle(
            color: kCaptionColor,
          ),
        ),
        const YBox(16),
        Row(
          children: [
            const Text(
              "See less ",
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            Transform.rotate(
              angle: 3.14 / 2,
              child: const Icon(
                Icons.chevron_left,
                color: kPrimaryColor,
              ),
            )
          ],
        ),
        const YBox(32),
        const Text("Shippings Information:"),
        const YBox(16),
        const Text.rich(
          TextSpan(
            text: "Delivery:  ",
            children: [
              TextSpan(
                  text: "Shipping from Jakarta, Indonesia",
                  style: TextStyle(color: kCaptionColor)),
            ],
          ),
        ),
        const YBox(6),
        const Text.rich(
          TextSpan(
            text: "Shipping:  ",
            children: [
              TextSpan(
                  text: "FREE International Shipping",
                  style: TextStyle(color: kCaptionColor)),
            ],
          ),
        ),
        const YBox(6),
        const Text.rich(
          TextSpan(
            text: "Arrive:  ",
            children: [
              TextSpan(
                  text: "Estimated arrival on 25 - 27 Oct 2022",
                  style: TextStyle(color: kCaptionColor)),
            ],
          ),
        ),
        const YBox(8),
        const Divider(thickness: 0.8),
        const YBox(32),
        const Text("Seller Information :"),
        const YBox(32),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 32,
              backgroundColor: kCaptionColor,
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Thrifting Store.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const XBox(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Thrifting_Store",
                  style: TextStyle(fontSize: 14),
                ),
                const YBox(8),
                const Text(
                  "Active 5 Min ago  |  96,7% Positive Feedback",
                  style: TextStyle(
                    color: kCaptionColor,
                    fontSize: 10,
                  ),
                ),
                const YBox(8),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        AppTheme.getMaterialProperty<Color>(Colors.white),
                    shape: AppTheme.getMaterialProperty<OutlinedBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(color: kPrimaryColor),
                    )),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 18,
                          child: Assets.svg.shop.svg(),
                        ),
                        const XBox(8),
                        const Text(
                          "Visit store",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
