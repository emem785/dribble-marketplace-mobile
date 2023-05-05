import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:dribble_design_marketplace/Home/Presentation/item_page/widget/page_indicator.dart';
import 'package:dribble_design_marketplace/Home/Presentation/widgets/models/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(0.01),
              blurRadius: 5,
              spreadRadius: 5,
              offset: const Offset(-10, 2),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: CategoryItem.homeScreenCategories
                    .map((e) => CategoryTile(categoryItem: e))
                    .toList(),
              ),
              YBox(32),
              PageIndicator(currentPage: 0),
              YBox(16),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.categoryItem,
  }) : super(key: key);

  final CategoryItem categoryItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const YBox(16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kDefaultBackground,
          ),
          child: categoryItem.icon.svg(),
        ),
        const YBox(8),
        Text(
          categoryItem.label,
          style: const TextStyle(
            color: kCaptionColor,
          ),
        ),
      ],
    );
  }
}
