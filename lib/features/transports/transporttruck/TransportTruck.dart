import 'dart:convert';

import '../../product/productitem/ProductItem.dart';

//import '../university/University.dart';

class Transporttruck {
  final int transporttruckID;
  final int productitemID;
  final Productitem productitemDETAIL;
  final String transporttruckNO;
  final String truckregistrationDATE;
  final String transporttruckLOADWEIGHT;
  final String isactive;

  const Transporttruck({
    required this.transporttruckID,
    required this.productitemID,
    required this.productitemDETAIL,
    required this.transporttruckNO,
    required this.truckregistrationDATE,
    required this.transporttruckLOADWEIGHT,
    required this.isactive,
  });

  factory Transporttruck.fromJson(Map<String, dynamic> json) {
    return Transporttruck(
      transporttruckID: json['transporttruck_ID'],
      productitemID: json['productitem_ID'],
      productitemDETAIL:Productitem.fromJson(jsonDecode(json['productitem_DETAIL'])),
      transporttruckNO: json['transporttruck_NO'],
      truckregistrationDATE: json['truckregistration_DATE'],
      transporttruckLOADWEIGHT: json['transporttruck_LOADWEIGHT'],
      isactive: json['isactive'],
    );
  }
}
