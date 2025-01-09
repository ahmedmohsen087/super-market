import 'package:flutter/material.dart';
import 'package:super_market/core/constants/app_assets.dart';
import 'package:super_market/core/theme/app_color.dart';
import 'package:super_market/models/item_model.dart';

import '../widgets/product_item.dart';

class Cheese extends StatelessWidget {
  Cheese({super.key});

  final List<ItemModel> items = [
    ItemModel(image: AppAssets.romyIcon, title: 'جبنة رومي', price: 75),
    ItemModel(image: AppAssets.romyIcon, title: 'جبنة شيدر', price: 90),
    ItemModel(image: AppAssets.romyIcon, title: 'جبنة موزاريلا', price: 120),
    ItemModel(image: AppAssets.romyIcon, title: 'جبنة رومي', price: 75),
    ItemModel(image: AppAssets.romyIcon, title: 'جبنة شيدر', price: 90),
    ItemModel(image: AppAssets.romyIcon, title: 'جبنة موزاريلا', price: 120),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.white,
              ),
              child: ProductItem(itemModel: items[index]),
            );
          },
        ),
      ),
    );
  }
}
