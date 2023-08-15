import 'dart:convert';

import '../productattribute/ProductAttribute.dart';

class Productattributevalue {
  final int productattributevalueID;
  // final int applicationID;
  // final Application applicationDETAIL;
  final int productattributeID;
  final Productattribute productattributeDETAIL;
  final String isactive;

  const Productattributevalue({
    required this.productattributevalueID,
    // required this.applicationID,
    // required this.applicationDETAIL,
    required this.productattributeID,
    required this.productattributeDETAIL,
    required this.isactive,
  });

  factory Productattributevalue.fromJson(Map<String, dynamic> json) {
    return Productattributevalue(
      productattributevalueID: json['productattributevalue_ID'],
      // applicationID: json['application_ID'],
      // applicationDETAIL: Application.fromJson(jsonDecode(json['application_DETAIL'])),
      productattributeID: json['productattribute_ID'],
      productattributeDETAIL: Productattribute.fromJson(
          jsonDecode(json['productattribute_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
