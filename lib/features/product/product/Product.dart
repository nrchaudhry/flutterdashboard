import 'dart:convert';

import '../productcategory/ProductCategory.dart';

class Product {
  final int productID;
  final int productcategoryID;
  final ProductCategory productcategoryDETAIL;
  final dynamic quickbookID;
  final dynamic sageID;
  final dynamic netsuiteID;
  final dynamic productCODE;
  final dynamic productNEWCODE;
  final dynamic productNAME;
  final dynamic productDESC;
  final dynamic producticonURL;
  final String isactive;

  const Product({
    required this.productID,
    required this.productcategoryID,
    required this.productcategoryDETAIL,
    required this.quickbookID,
    required this.sageID,
    required this.netsuiteID,
    required this.productCODE,
    required this.productNEWCODE,
    required this.productNAME,
    required this.productDESC,
    required this.producticonURL,
    required this.isactive,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productID: json['product_ID'],
      productcategoryID: json['productcategory_ID'],
      productcategoryDETAIL:
          ProductCategory.fromJson(jsonDecode(json['productcategory_DETAIL'])),
      quickbookID: json['quickbook_ID'],
      sageID: json['sage_ID'],
      netsuiteID: json['netsuite_ID'],
      productCODE: json['product_CODE'],
      productNEWCODE: json['product_NEWCODE'],
      productNAME: json['product_NAME'],
      productDESC: json['product_DESC'],
      producticonURL: json['producticon_URL'],
      isactive: json['isactive'],
    );
  }
}
