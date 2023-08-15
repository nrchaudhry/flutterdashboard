import 'dart:convert';

import '../productattribute/ProductAttribute.dart';

class Productattributeapplication {
  final int productattributeapplicationID;
  // final int applicationID;
  // final Application applicationDETAIL;
  final int productattributeID;
  final Productattribute productattributeDETAIL;
  final String isactive;

  const Productattributeapplication({
    required this.productattributeapplicationID,
    // required this.applicationID,
    // required this.applicationDETAIL,
    required this.productattributeID,
    required this.productattributeDETAIL,
    required this.isactive,
  });

  factory Productattributeapplication.fromJson(Map<String, dynamic> json) {
    return Productattributeapplication(
      productattributeapplicationID: json['productattributeapplication_ID'],
      // applicationID: json['application_ID'],
      // applicationDETAIL: Application.fromJson(jsonDecode(json['application_DETAIL'])),
      productattributeID: json['productattribute_ID'],
      productattributeDETAIL: Productattribute.fromJson(
          jsonDecode(json['productattribute_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
