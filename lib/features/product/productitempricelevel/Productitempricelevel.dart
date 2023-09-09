// ignore_for_file: non_constant_identifier_names

class Productitempricelevel {
  final int productitempricelevel_ID;
  final int currency_ID;
  final String currencyDETAIL;
  final int productitem_ID;
  final String productitemDETAIL;
  final int pricelevel_ID;
  final String pricelevelDETAIL;
  final String productitem_QUANTITY;
  final String productitem_UNITPRICE;

  const Productitempricelevel({
    required this.productitempricelevel_ID,
    required this.currency_ID,
    required this.currencyDETAIL,
    required this.productitem_ID,
    required this.productitemDETAIL,
    required this.pricelevel_ID,
    required this.pricelevelDETAIL,
    required this.productitem_QUANTITY,
    required this.productitem_UNITPRICE,
  });

  factory Productitempricelevel.fromJson(Map<String, dynamic> json) {
    return Productitempricelevel(
      productitempricelevel_ID: json['PRODUCTITEMPRICELEVEL_ID'],
      productitem_ID: json['PRODUCTITEM_ID'],
      currency_ID: json['CURRENCY_ID'],
      currencyDETAIL: "product.fromJson(jsonDecode(json['currency_DETAIL']))",
      productitemDETAIL:
          "product.fromJson(jsonDecode(json['productitem_DETAIL']))",
      pricelevel_ID: json['PRICELEVEL_ID'],
      pricelevelDETAIL:
          "product.fromJson(jsonDecode(json['pricelevelDETAIL']))",
      productitem_QUANTITY: json['PRODUCTITEM_QUANTITY'],
      productitem_UNITPRICE: json['PRODUCTITEM_UNITPRICE'],
    );
  }
}
