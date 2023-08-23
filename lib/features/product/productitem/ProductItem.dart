import 'dart:convert';

import '../product/Product.dart';

class Productitem {
  final int productitemID;
  // final int applicationID;
  // final Application applicationDETAIL;
  final int productID;
  final Product productDETAIL;
  final int productitemNAME;
  final int productitemDESC;
  final int productitemIMAGE;
  final String isactive;

  const Productitem({
    required this.productitemID,
    // required this.applicationID,
    // required this.applicationDETAIL,
    required this.productID,
    required this.productDETAIL,
    required this.productitemNAME,
    required this.productitemDESC,
    required this.productitemIMAGE,
    required this.isactive,
  });

  factory Productitem.fromJson(Map<String, dynamic> json) {
    return Productitem(
      productitemID: json['productitem_ID'],
      // applicationID: json['application_ID'],
      // applicationDETAIL: Application.fromJson(jsonDecode(json['application_DETAIL'])),
      productID: json['product_ID'],
      productDETAIL: Product.fromJson(jsonDecode(json['product_DETAIL'])),
      productitemNAME: json['productitem_NAME'],
      productitemDESC: json['productitem_DESC'],
      productitemIMAGE: json['productitem_IMAGE'],
      isactive: json['isactive'],
    );
  }
}
