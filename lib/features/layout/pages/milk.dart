import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_color.dart';
import '../../../models/item_model.dart';
import '../widgets/product_item.dart';

class Milk extends StatelessWidget {
  Milk({super.key});

  final List<ItemModel> items = [
    ItemModel(image: AppAssets.milkIcon, title: 'لبن جاموسي', price: 75),
    ItemModel(image: AppAssets.milkIcon, title: 'لبن جهينة', price: 90),
    ItemModel(image: AppAssets.milkIcon, title: 'لبن المراعي', price: 120),
    ItemModel(image: AppAssets.milkIcon, title: 'لبن جاموسي', price: 75),
    ItemModel(image: AppAssets.milkIcon, title: 'لبن جهينة', price: 90),
    ItemModel(image: AppAssets.milkIcon, title: 'لبن المراعي', price: 120),
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
