import 'dart:convert';

//import '../university/University.dart';

class Productitemattributevalue {
  final int productitemattributevalueID;
  final int productitemID;
  final String productitemDETAIL;
  final int productattributeID;
  final String productattributeDETAIL;
  final int productattributevalueID;
  final String productattributeitemVALUE;
  final String isactive;

  const Productitemattributevalue({
    required this.productitemattributevalueID,
    required this.productitemID,
    required this.productitemDETAIL,
    required this.productattributeID,
    required this.productattributeDETAIL,
    required this.productattributevalueID,
    required this.productattributeitemVALUE,
    required this.isactive,
  });

  factory Productitemattributevalue.fromJson(Map<String, dynamic> json) {
    return Productitemattributevalue(
      productitemattributevalueID: json['productitemattributevalue_ID'],
      productitemID: json['productitem_ID'],
      productitemDETAIL:
          "ProductItem.fromJson(jsonDecode(json[' productitem_DETAIL']))",
      productattributeID: json[' productattribute_ID'],
      productattributeDETAIL:
          " Productattribute.fromJson(jsonDecode(json[' productattribute_DETAIL']))",
      productattributevalueID: json['productattributevalue_ID'],
      productattributeitemVALUE: json['productattributeitem_VALUE'],
      isactive: json['isactive'],
    );
  }
}
