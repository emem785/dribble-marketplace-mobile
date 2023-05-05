import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/Utils/extension/typography_extension.dart';
import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:dribble_design_marketplace/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../item_page/widget/page_indicator.dart';

class AppBarBackground extends StatelessWidget {
  const AppBarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        BackgroundOne(),
        BackgroundTwo(),
      ],
    );
  }
}

class BackgroundOne extends StatelessWidget {
  const BackgroundOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Assets.jpg.sweaters.image(fit: BoxFit.fill),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "#FASHION DAY",
                style: context.headline4,
              ),
              Text(
                "80% OFF",
                style: context.headline1,
              ),
              const Text(
                "Discover fashion that suits your style and budget",
                style: TextStyle(color: kGrey),
              ),
              const YBox(8),
              ElevatedButton(onPressed: () {}, child: Text("Check this out")),
              const YBox(32),
            ],
          ),
        ),
        const Positioned(
          top: 140,
          right: 16,
          child: PageIndicator(currentPage: 0),
        )
      ],
    );
  }
}

class BackgroundTwo extends StatelessWidget {
  const BackgroundTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Assets.jpg.makeup.image(fit: BoxFit.fill),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "#BEAUTYSALE",
                style: context.headline4,
              ),
              Text(
                "DISCOVER OUR BEAUTY SELECTION",
                style: context.headline2,
              ),
              const YBox(8),
              ElevatedButton(onPressed: () {}, child: Text("Check this out")),
              const YBox(32),
            ],
          ),
        ),
        const Positioned(
          top: 140,
          right: 16,
          child: PageIndicator(currentPage: 1),
        )
      ],
    );
  }
}
