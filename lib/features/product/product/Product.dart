import 'dart:convert';

import '../productcategory/ProductCategory.dart';

class Product {
  final int productID;
  final int productcategoryID;
  final Productcategory productcategoryDETAIL;
  final String quickbookID;
  final String sageID;
  final String productDES;
  final int netsuiteID;
  final String productCODE;
  final String productNEWCODE;
  final String productNAME;
  final String isactive;

  const Product({
    required this.productID,
    required this.productcategoryID,
    required this.productcategoryDETAIL,
    required this.quickbookID,
    required this.sageID,
    required this.productDES,
    required this.netsuiteID,
    required this.productCODE,
    required this.productNEWCODE,
    required this.productNAME,
    required this.isactive,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productID: json['product_ID'],
      productcategoryID: json['productcategory_ID'],
      productcategoryDETAIL:
          Productcategory.fromJson(jsonDecode(json['productcategory_DETAIL'])),
      quickbookID: json['quickbook_ID'],
      sageID: json['sage_ID'],
      productDES: json['product_DES'],
      netsuiteID: json['netsuite_ID'],
      productCODE: json['product_CODE'],
      productNEWCODE: json['product_NEWCODE'],
      productNAME: json['product_NAME'],
      isactive: json['isactive'],
    );
  }
}
