import 'package:dribble_design_marketplace/Core/Routing/dimensions.dart';
import 'package:dribble_design_marketplace/Core/theme/colors.dart';
import 'package:dribble_design_marketplace/Home/Presentation/widgets/models/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: CategoryItem.homeScreenCategories
                .map((e) => CategoryTile(categoryItem: e))
                .toList(),
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
