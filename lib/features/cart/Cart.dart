class Cart {
  // ignore: non_constant_identifier_names
  final int productitem_ID;
  // ignore: non_constant_identifier_names
  final dynamic product_CODE;
  // ignore: non_constant_identifier_names
  final dynamic productitem_NAME;
  // ignore: non_constant_identifier_names
  final dynamic productunit_CODE;
  // ignore: non_constant_identifier_names
  final dynamic productitem_QUANTITY;
  // ignore: non_constant_identifier_names
  final dynamic pricelevel_ID;
  // ignore: non_constant_identifier_names
  final dynamic productitem_RATE;
  // ignore: non_constant_identifier_names
  final dynamic taxcode_ID;
  final dynamic vat;
  final String isPermanent;

  const Cart({
  // ignore: non_constant_identifier_names
    required this.productitem_ID,
  // ignore: non_constant_identifier_names
    required this.product_CODE,
  // ignore: non_constant_identifier_names
    required this.productitem_NAME,
  // ignore: non_constant_identifier_names
    required this.productunit_CODE,
  // ignore: non_constant_identifier_names
    required this.productitem_QUANTITY,
  // ignore: non_constant_identifier_names
    required this.pricelevel_ID,
  // ignore: non_constant_identifier_names
    required this.productitem_RATE,
  // ignore: non_constant_identifier_names
    required this.taxcode_ID,
    required this.vat,
    required this.isPermanent,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      productitem_ID: json['productitem_ID'],
      product_CODE: json['product_CODE'],
      productitem_NAME: json['productitem_NAME'],
      productunit_CODE: json['productunit_CODE'],
      productitem_QUANTITY: json['productitem_QUANTITY'],
      pricelevel_ID: json['pricelevel_ID'],
      productitem_RATE: json['productitem_RATE'],
      taxcode_ID: json['taxcode_ID'],
      vat: json['vat'],
      isPermanent: json['isPermanent'],
    );
  }
}
