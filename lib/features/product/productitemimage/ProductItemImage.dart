import 'dart:convert';

//import '../university/University.dart';

class Productitemimage {
  final int productitemimageID;
  final int ProductitemID;
  final String ProductitemDETAIL;
  final String ProductitemimagePATH;
  final String isactive;

  const Productitemimage({
    required this.productitemimageID,
    required this.ProductitemID,
    required this.ProductitemDETAIL,
    required this.ProductitemimagePATH,
    required this.isactive,
  });

  factory Productitemimage.fromJson(Map<String, dynamic> json) {
    return Productitemimage(
      productitemimageID: json['productitemimage_ID'],
      ProductitemID: json[' Productitem_ID'],
      ProductitemDETAIL:
          "Productitem.fromJson(jsonDecode(json['Productitem_DETAIL']))",
      ProductitemimagePATH: json['Productitemimage_PATH'],
      isactive: json['isactive'],
    );
  }
}
