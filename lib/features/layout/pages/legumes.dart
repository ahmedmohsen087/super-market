import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/theme/app_color.dart';
import '../../../models/item_model.dart';
import '../widgets/product_item.dart';

class Legumes extends StatelessWidget {
  Legumes({super.key});

  final List<ItemModel> items = [
    ItemModel(image: AppAssets.lobiaIcon, title: 'عدس ', price: 15),
    ItemModel(image: AppAssets.lobiaIcon, title: 'فاصوليا', price: 12),
    ItemModel(image: AppAssets.lobiaIcon, title: 'لوبيا', price: 13),
    ItemModel(image: AppAssets.lobiaIcon, title: 'حمص ', price: 15),
    ItemModel(image: AppAssets.lobiaIcon, title: 'ترمس', price: 12),
    ItemModel(image: AppAssets.lobiaIcon, title: 'فول', price: 13),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.primaryColor,
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
