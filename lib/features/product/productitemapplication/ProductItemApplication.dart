import 'dart:convert';

//import '../university/University.dart';

class Productitemapplication {
  final int productitemapplicationID;
  final int applicationID;
  final String applicationDETAIL;
  final int productitemID;
  final String productitemDETAIL;
  final String isactive;

  const Productitemapplication({
    required this.productitemapplicationID,
    required this.applicationID,
    required this.applicationDETAIL,
    required this.productitemID,
    required this.productitemDETAIL,
    required this.isactive,
  });

  factory Productitemapplication.fromJson(Map<String, dynamic> json) {
    return Productitemapplication(
      productitemapplicationID: json['productitemapplication_ID'],
      applicationID: json['application_ID'],
      applicationDETAIL:
          "Application.fromJson(jsonDecode(json['application_DETAIL']))",
      productitemID: json['productitem_ID'],
      productitemDETAIL:
          "ProductItem.fromJson(jsonDecode(json['productitem_DETAIL']))",
      isactive: json['isactive'],
    );
  }
}
