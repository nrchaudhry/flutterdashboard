import 'package:flutter/material.dart';

import 'package:flutterdashboard/features/product/productitem/ProductItemsView.dart';

import 'ProductCategory.dart';
import 'ProductCategoryWidget.dart';

class ProductCategoryList extends StatelessWidget {
  const ProductCategoryList({super.key, required this.productcategories});

  final List<ProductCategory> productcategories;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        const ProductItemsView();
      },
      child: GridView.extent(
        maxCrossAxisExtent: 250,
        padding: const EdgeInsets.all(8),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [for (var productcategory in productcategories)
          productCategoryPromoCard(context, productcategory.productcategoryiconURL, productcategory.productcategoryNAME),
        ]
      ),
    );
  }
}
