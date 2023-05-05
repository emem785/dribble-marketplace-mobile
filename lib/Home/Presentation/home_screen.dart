import 'package:auto_route/auto_route.dart';
import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/Utils/extension/typography_extension.dart';
import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:dribble_design_marketplace/Home/Presentation/widgets/app_bar_background.dart';
import 'package:dribble_design_marketplace/Home/Presentation/widgets/clothes_section.dart';
import 'package:dribble_design_marketplace/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'widgets/categories_section.dart';

@RoutePage()
class HomeRoutingScreen extends StatelessWidget {
  const HomeRoutingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Transform.translate(
              offset: const Offset(-4.0, 0.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search..",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: kInputBackground),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Assets.svg.searchInput.svg(),
                  ),
                  prefixIconConstraints:
                      BoxConstraints.tight(const Size(32, 32)),
                ),
              ),
            ),
            titleSpacing: 15.0,
            automaticallyImplyLeading: false,
            leadingWidth: 0.0,
            toolbarHeight: 90,
            actions: [
              ActionWrapper(amount: 10, child: Assets.svg.cart.svg()),
              const XBox(16),
              ActionWrapper(amount: 10, child: Assets.svg.notifications.svg()),
              const XBox(16),
            ],
            pinned: true,
            elevation: 5.0,
            shadowColor: Colors.black87.withOpacity(0.2),
            backgroundColor: Colors.white,
            flexibleSpace: const FlexibleSpaceBar(
              background: AppBarBackground(),
            ),
            expandedHeight: 300.0,
          ),
          const CategoriesSection(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Sale Product",
                      style: context.headline3
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See more",
                      style: context.headline4.copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const ClothesSection()
        ],
      ),
    );
  }
}

class ActionWrapper extends StatelessWidget {
  const ActionWrapper({
    Key? key,
    required this.amount,
    required this.child,
  }) : super(key: key);

  final int amount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: child,
          ),
          Positioned(
            right: 0,
            top: 24,
            child: Container(
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Text(
                  amount.toString(),
                  style: const TextStyle(fontSize: 8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
