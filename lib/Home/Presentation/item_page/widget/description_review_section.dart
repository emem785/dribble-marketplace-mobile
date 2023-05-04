import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'about_item_section.dart';
import 'review_section.dart';

class DescriptionReviewSection extends HookWidget {
  const DescriptionReviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    return SizedBox(
      height: 800,
      child: Column(
        children: [
          SizedBox(
            height: 45,
            child: Stack(
              children: [
                Positioned.fill(
                  child: TabBar(
                    controller: tabController,
                    labelColor: kPrimaryColor,
                    unselectedLabelColor: kCaptionColor,
                    indicatorColor: kPrimaryColor,
                    labelPadding: const EdgeInsets.only(right: 40),
                    tabs: const [
                      Tab(text: "About Item"),
                      Tab(text: "Reviews"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                AboutItemSection(),
                ReviewSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
