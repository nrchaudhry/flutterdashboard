// ignore_for_file: non_constant_identifier_names
class Productitempricechange {
  final int productitempricechange_ID;
  final int productitem_ID;
  final String productitemDETAIL;
  final int currency_ID;
  final String currencyDETAIL;
  final String productitem_PURCHASEPRICE;
  final String productitem_LASTPURCHASEPRICE;

  const Productitempricechange({
    required this.productitempricechange_ID,
    required this.productitem_ID,
    required this.productitemDETAIL,
    required this.currency_ID,
    required this.currencyDETAIL,
    required this.productitem_PURCHASEPRICE,
    required this.productitem_LASTPURCHASEPRICE,
  });

  factory Productitempricechange.fromJson(Map<String, dynamic> json) {
    return Productitempricechange(
      productitempricechange_ID: json['PRODUCTITEMPRICECHANGE_ID'],
      productitem_ID: json['PRODUCTITEM_ID'],
      productitemDETAIL:
          "product.fromJson(jsonDecode(json['productitem_DETAIL']))",
      currency_ID: json['CURRENCY_ID'],
      currencyDETAIL: "product.fromJson(jsonDecode(json['currency_DETAIL']))",
      productitem_PURCHASEPRICE: json['PRODUCTITEM_PURCHASEPRICE'],
      productitem_LASTPURCHASEPRICE: json['PRODUCTITEM_LASTPURCHASEPRICE'],
    );
  }
}
