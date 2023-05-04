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
          mainAxisSpacing: 24,
          mainAxisExtent: 200,
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
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: kDefaultBackground,
                height: 100,
              ),
              const YBox(8),
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
                    '${cartItem.rating} | ${cartItem.amountOrdered}',
                    style: const TextStyle(fontSize: 10, color: kCaptionColor),
                  ),
                  const XBox(8),
                  Text(
                    "\$${cartItem.price}",
                    style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
