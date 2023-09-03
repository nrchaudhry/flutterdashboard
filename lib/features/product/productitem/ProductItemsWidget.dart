import 'package:flutter/material.dart';

import 'ProductItem.dart';
import 'ProductItemWidget.dart';

class ProductItemList extends StatelessWidget {
  const ProductItemList({super.key, required this.productitems});

  final List<ProductItem> productitems;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        child: Text("Touch me");
      },
        child: GridView.extent(
          maxCrossAxisExtent: 250,
          padding: const EdgeInsets.all(8),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [for (var productitem in productitems)
            productItemPromoCard(productitem.productDETAIL.producticonURL, productitem.productitemNAME),
          ]
        ),
    );
  }
}
