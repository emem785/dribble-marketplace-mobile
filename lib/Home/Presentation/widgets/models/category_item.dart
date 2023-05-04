import 'package:dribble_design_marketplace/gen/assets.gen.dart';

class CategoryItem {
  final SvgGenImage icon;
  final String label;

  CategoryItem(this.icon, this.label);

  static List<CategoryItem> homeScreenCategories = [
    CategoryItem(Assets.svg.category, "Category"),
    CategoryItem(Assets.svg.flight, "Flight"),
    CategoryItem(Assets.svg.bill, "Bills"),
    CategoryItem(Assets.svg.dataPlan, "Data Plans"),
    CategoryItem(Assets.svg.topUp, "Top Up"),
  ];
}
