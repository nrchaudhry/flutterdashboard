import 'dart:convert';

import '../product/Product.dart';

class Productapplication {
  final int productapplicationID;
  // final int applicationID;
  // final Application applicationDETAIL;
  final int productID;
  final Product productDETAIL;
  final String isactive;

  const Productapplication({
    required this.productapplicationID,
    // required this.applicationID,
    // required this.applicationDETAIL,
    required this.productID,
    required this.productDETAIL,
    required this.isactive,
  });

  factory Productapplication.fromJson(Map<String, dynamic> json) {
    return Productapplication(
      productapplicationID: json['productapplication_ID'],
      // applicationID: json['application_ID'],
      // applicationDETAIL: Application.fromJson(jsonDecode(json['application_DETAIL'])),
      productID: json['product_ID'],
      productDETAIL: Product.fromJson(jsonDecode(json['product_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
