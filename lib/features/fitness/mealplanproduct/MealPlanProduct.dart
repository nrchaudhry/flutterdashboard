import 'dart:convert';

import '../../product/product/Product.dart';
import '../fitnessmember/FitnessMember.dart';
import '../mealplan/MealPlan.dart';

class Mealplanproduct {
  final int mealplanproductID;
  final int fitnessmemberID;
  final Fitnessmember fitnessmemberDETAIL;
  final int mealplanID;
  final Mealplan mealplanDETAIL;
  final int productID;
  final Product productDETAIL;
  final String isactive;

  const Mealplanproduct({
    required this.mealplanproductID,
    required this.fitnessmemberID,
    required this.fitnessmemberDETAIL,
    required this.mealplanID,
    required this.mealplanDETAIL,
    required this.productID,
    required this.productDETAIL,
    required this.isactive,
  });

  factory Mealplanproduct.fromJson(Map<String, dynamic> json) {
    return Mealplanproduct(
      mealplanproductID: json['mealplanproduct_ID'],
      fitnessmemberID: json['fitnessmember_ID'],
      fitnessmemberDETAIL: Fitnessmember.fromJson(jsonDecode(json['fitnessmember_DETAIL'])),
      mealplanID: json['mealplan_ID'],
      mealplanDETAIL: Mealplan.fromJson(jsonDecode(json['mealplan_DETAIL'])),
      productID: json['product_ID'],
      productDETAIL: Product.fromJson(jsonDecode(json['product_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
