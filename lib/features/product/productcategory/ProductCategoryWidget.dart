import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'ProductCategory.dart';

class ProductCategoryList extends StatelessWidget {
  const ProductCategoryList({super.key, required this.productcategories});

  final List<ProductCategory> productcategories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
             child: SingleChildScrollView(
        child: Column(
          children: [for (var productcategory in productcategories) 
          //Text(i.authorDETAIL.authordisplayNAME)]
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          productcategory.productcategoryNAME,
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
Image.network(
                          productcategory.productcategoryiconURL,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                                              //Image(image: NetworkImage(productcategory.productcategoryiconURL))
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                const Divider(
                  thickness: 8,
                  color: Colors.black26,
                ),
              ]
            ),
          ),
        ]),
      ),
      ),
    );
  }
}
