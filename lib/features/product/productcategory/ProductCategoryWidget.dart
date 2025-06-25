// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutterdashboard/features/product/productitem/ProductItemsView.dart';

Widget productCategoryPromoCard(BuildContext context, productcategory) {
  print('Image URL: ${productcategory.productcategoryimageURL}');
  String imageURL = '${productcategory.productcategoryimageURL}'.replaceFirst('thumbnail?', 'uc?export=view&').replaceAll(RegExp(r'&sz=\w+'), '');
  print('Image URL: $imageURL');

  return InkWell(
    onTap: () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => ProductItemsView(
              productCategory: productcategory.productcategoryID)));
      //const ProductItemsView();
    },
//    aspectRatio: 2.62 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageURL),
        ),
      ),
      child: Container(
        // ignore: sort_child_properties_last
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                productcategory.productcategoryNAME,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 20)),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            stops: const [0.1, 0.9],
            begin: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(71, 255, 255, 255).withOpacity(.8),
              const Color.fromARGB(71, 255, 255, 255).withOpacity(.1),
            ],
          ),
        ),
      ),
    ),
  );
}
