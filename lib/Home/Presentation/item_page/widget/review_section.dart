import 'dart:math';

import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Home/Data/models/cart_item.dart';
import 'package:flutter/material.dart';

import '../../../../Core/theme/colors.dart';
import 'rating_section.dart';
import 'review_tile.dart';
import 'see_more_widget.dart';
import 'top_reviews.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    Key? key,
    required this.cartItem,
  }) : super(key: key);
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const YBox(32),
        const Text("Reviews & Ratings"),
        const YBox(8),
        RatingsSection(cartItem: cartItem),
        const YBox(16),
        const Text("Reviews with images & videos"),
        const YBox(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 4; i++)
              Container(
                decoration: BoxDecoration(
                  color: kDefaultBackground,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: CartItem.sideImage[i].image(fit: BoxFit.fill),
                height: 80,
                width: 80,
              ),
          ],
        ),
        const YBox(16),
        const Divider(thickness: 0.8),
        const YBox(16),
        const TopReviews(),
        const YBox(16),
        for (int i = 0; i < 3; i++) const ReviewTile(),
        const SeeMoreWidget(),
      ],
    );
  }
}

class ReviewPill extends StatelessWidget {
  const ReviewPill({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

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
          text,
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
