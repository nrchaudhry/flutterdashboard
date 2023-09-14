class Productitemimage {
  final int productitemimageID;
  final int productitemID;
  final String productitemDETAIL;
  final String productitemimagePATH;
  final String isactive;

  const Productitemimage({
    required this.productitemimageID,
    required this.productitemID,
    required this.productitemDETAIL,
    required this.productitemimagePATH,
    required this.isactive,
  });

  factory Productitemimage.fromJson(Map<String, dynamic> json) {
    return Productitemimage(
      productitemimageID: json['productitemimage_ID'],
      productitemID: json[' productitem_ID'],
      productitemDETAIL:
          "ProductItem.fromJson(jsonDecode(json['productitem_DETAIL']))",
      productitemimagePATH: json['productitemimage_PATH'],
      isactive: json['isactive'],
    );
  }
}
