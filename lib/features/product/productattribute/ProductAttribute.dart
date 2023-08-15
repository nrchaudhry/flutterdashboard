import 'dart:convert';

import '../attribute/Attribute.dart';
import '../attributecategory/AttributeCategory.dart';
import '../product/Product.dart';
import '../productcategory/ProductCategory.dart';

class Productattribute {
  final int productattributeID;
  final int attributeID;
  final Attribute attributeDETAIL;
  final int productID;
  final Product productDETAIL;
  final int productcategoryID;
  final Productcategory productcategoryDETAIL;
  final int attributecategoryID;
  final Attributecategory attributecategoryDETAIL;
  final String attributeorderNo;
  final String isactive;

  const Productattribute({
    required this.productattributeID,
    required this.attributeID,
    required this.attributeDETAIL,
    required this.productID,
    required this.productDETAIL,
    required this.productcategoryID,
    required this.productcategoryDETAIL,
    required this.attributecategoryID,
    required this.attributecategoryDETAIL,
    required this.attributeorderNo,
    required this.isactive,
  });

  factory Productattribute.fromJson(Map<String, dynamic> json) {
    return Productattribute(
      productattributeID: json['productattribute_ID'],
      attributeID: json['attribute_ID'],
      attributeDETAIL: Attribute.fromJson(jsonDecode(json['attribute_DETAIL'])),
      productID: json['product_ID'],
      productDETAIL: Product.fromJson(jsonDecode(json['product_DETAIL'])),
      productcategoryID: json['productcategory_ID'],
      productcategoryDETAIL:
          Productcategory.fromJson(jsonDecode(json['productcategory_DETAIL'])),
      attributecategoryID: json['attributecategory_ID'],
      attributecategoryDETAIL: Attributecategory.fromJson(
          jsonDecode(json['attributecategory_DETAIL'])),
      attributeorderNo: json['attributeorder_No'],
      isactive: json['isactive'],
    );
  }
}
