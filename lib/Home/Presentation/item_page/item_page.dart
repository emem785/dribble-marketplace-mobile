import 'package:auto_route/auto_route.dart';
import 'package:dribble_design_marketplace/Core/Utils/extension/typography_extension.dart';
import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:dribble_design_marketplace/Home/Data/models/cart_item.dart';
import 'package:dribble_design_marketplace/Home/Presentation/home_screen.dart';
import 'package:dribble_design_marketplace/Home/Presentation/item_page/widget/cart_bottom_nav_bar.dart';
import 'package:dribble_design_marketplace/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../Core/Routing/dimensions.dart';
import 'widget/description_review_section.dart';

@RoutePage()
class ItemScreen extends StatelessWidget {
  const ItemScreen({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CartBottomNavBar(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Assets.svg.arrowLeft.svg(),
        ),
        leadingWidth: 40,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Assets.svg.like.svg(),
          const XBox(12),
          Assets.svg.share.svg(),
          const XBox(12),
          ActionWrapper(
            amount: 1,
            child: Assets.svg.cart.svg(),
          ),
          const XBox(16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: AnimationConfiguration.toStaggeredList(
                childAnimationBuilder: (child) {
                  return SlideAnimation(
                    verticalOffset: 30.0,
                    child: FadeInAnimation(
                      child: child,
                    ),
                  );
                },
                delay: const Duration(milliseconds: 100),
                duration: const Duration(milliseconds: 100),
                children: [
                  const YBox(32),
                  Container(color: kDefaultBackground, height: 300),
                  const YBox(16),
                  Row(
                    children: [
                      Assets.svg.shop.svg(),
                      const XBox(8),
                      const Text(
                        "tokobaju.id",
                        style: TextStyle(color: kCaptionColor),
                      ),
                    ],
                  ),
                  const YBox(16),
                  Text(
                    cartItem.description,
                    style: context.headline2.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const YBox(16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 12,
                        child: Assets.svg.favouriteSolid.svg(),
                      ),
                      const XBox(4),
                      Text(
                        '${cartItem.rating} Ratings • ${cartItem.reviewCount}k+ Reviews • ${cartItem.salesCount}k+ Sold',
                        style: const TextStyle(
                          letterSpacing: 1.2,
                          fontSize: 14,
                          color: kCaptionColor,
                        ),
                      ),
                    ],
                  ),
                  const YBox(32),
                  const DescriptionReviewSection(),
                ],
              )),
        ),
      ),
    );
  }
}