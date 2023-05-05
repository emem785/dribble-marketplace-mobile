import 'dart:math';

import 'package:dribble_design_marketplace/gen/assets.gen.dart';

class CartItem {
  final String itemType;
  final String description;
  final String rating;
  final String reviewCount;
  final String salesCount;
  final int amountOrdered;
  final double price;
  final AssetGenImage? image;

  CartItem(
    this.itemType,
    this.description,
    this.rating,
    this.amountOrdered,
    this.price,
    this.reviewCount,
    this.salesCount,
    this.image,
  );

  static List<CartItem> get items {
    final Random random = Random();
    return List.generate(
      10,
      (index) => CartItem(
        "Shirt",
        descriptions[random.nextInt(descriptions.length)],
        (random.nextDouble() * 5).toStringAsFixed(1),
        random.nextInt(1000) + 100,
        (random.nextDouble() * 100).floorToDouble(),
        (random.nextDouble() * 3).toStringAsFixed(1),
        (random.nextDouble() * 3).toStringAsFixed(1),
        images[random.nextInt(images.length)],
      ),
    );
  }

  static List<String> descriptions = [
    "Essentials Men's Short-Sleeve Crewneck T-Shirt",
    "Essentials Men's Regular-Fit Long-Sleeve Oxford...",
  ];

  static List<AssetGenImage> images = [
    Assets.jpg.tshirtOne,
    Assets.jpg.tshirtTwo,
    Assets.jpg.tshirtThree,
  ];
}
