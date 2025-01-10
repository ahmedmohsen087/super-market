import 'package:flutter/material.dart';

import '../../../models/item_model.dart';

class ProductItem extends StatelessWidget {
  final ItemModel itemModel;

  const ProductItem({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 87,
            child: Image(image: AssetImage(itemModel.image)),
          ),
          Text(
            itemModel.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            '${itemModel.price} EGP',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
