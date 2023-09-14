// ignore_for_file: non_constant_identifier_names
class Productitempricechange {
  final int productitempricechangeID;
  final int productitemID;
  final String productitemDETAIL;
  final int currencyID;
  final String currencyDETAIL;
  final String productitemPURCHASEPRICE;
  final String productitemLASTPURCHASEPRICE;

  const Productitempricechange({
    required this.productitempricechangeID,
    required this.productitemID,
    required this.productitemDETAIL,
    required this.currencyID,
    required this.currencyDETAIL,
    required this.productitemPURCHASEPRICE,
    required this.productitemLASTPURCHASEPRICE,
  });

  factory Productitempricechange.fromJson(Map<String, dynamic> json) {
    return Productitempricechange(
      productitempricechangeID: json['productitempricechange_ID'],
      productitemID: json['productitem_ID'],
      productitemDETAIL:
          "product.fromJson(jsonDecode(json['productitem_DETAIL']))",
      currencyID: json['currency_ID'],
      currencyDETAIL: "product.fromJson(jsonDecode(json['currency_DETAIL']))",
      productitemPURCHASEPRICE: json['productitem_PURCHASEPRICE'],
      productitemLASTPURCHASEPRICE: json['productitem_LASTPURCHASEPRICE'],
    );
  }
}
