import 'package:auto_route/auto_route.dart';
import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/Routing/routes.dart';
import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:dribble_design_marketplace/Home/Data/models/cart_item.dart';
import 'package:dribble_design_marketplace/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ClothesSection extends StatelessWidget {
  const ClothesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            final cartItem = CartItem.items[index];
            return GridItem(cartItem: cartItem);
          },
          childCount: CartItem.items.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          mainAxisExtent: 230,
          crossAxisSpacing: 16.0,
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        onTap: () => context.router.push(ItemRoute(cartItem: cartItem)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: kDefaultBackground,
                    height: 140,
                    width: double.infinity,
                    child:
                        cartItem.image?.image() ?? Assets.jpg.tshirtOne.image(),
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: SizedBox(
                      height: 18,
                      child: Assets.svg.like.svg(),
                    ),
                  )
                ],
              ),
              const YBox(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartItem.itemType,
                      style: const TextStyle(color: kCaptionColor),
                    ),
                    const YBox(4),
                    Text(
                      cartItem.description,
                      style: const TextStyle(height: 1.5),
                    ),
                    const YBox(4),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const XBox(8),
                  SizedBox(
                    height: 12,
                    child: Assets.svg.favouriteSolid.svg(),
                  ),
                  const XBox(4),
                  Text(
                    '${cartItem.rating} | ${cartItem.amountOrdered}',
                    style: const TextStyle(fontSize: 10, color: kCaptionColor),
                  ),
                  Spacer(),
                  Text(
                    "\$${cartItem.price}",
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const YBox(2),
            ],
          ),
        ),
      ),
    );
  }
}
