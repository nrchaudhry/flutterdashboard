import 'dart:convert';

import '../product/Product.dart';

class Productimage {
  final int productimageID;
  final int productID;
  final Product productDETAIL;
  final String productimagePATH;
  final String isactive;

  const Productimage({
    required this.productimageID,
    required this.productID,
    required this.productDETAIL,
    required this.productimagePATH,
    required this.isactive,
  });

  factory Productimage.fromJson(Map<String, dynamic> json) {
    return Productimage(
      productimageID: json['productimage_ID'],
      productID: json['product_ID'],
      productDETAIL: Product.fromJson(jsonDecode(json['product_DETAIL'])),
      productimagePATH: json['productimage_PATH'],
      isactive: json['isactive'],
    );
  }
}
