// ignore_for_file: non_constant_identifier_names

class Productitempricelevel {
  final int productitempricelevelID;
  final int currencyID;
  final String currencyDETAIL;
  final int productitemID;
  final String productitemDETAIL;
  final int pricelevelID;
  final String pricelevelDETAIL;
  final String productitemQUANTITY;
  final String productitemUNITPRICE;

  const Productitempricelevel({
    required this.productitempricelevelID,
    required this.currencyID,
    required this.currencyDETAIL,
    required this.productitemID,
    required this.productitemDETAIL,
    required this.pricelevelID,
    required this.pricelevelDETAIL,
    required this.productitemQUANTITY,
    required this.productitemUNITPRICE,
  });

  factory Productitempricelevel.fromJson(Map<String, dynamic> json) {
    return Productitempricelevel(
      productitempricelevelID: json['productitempricelevel_ID'],
      productitemID: json['productitem_ID'],
      currencyID: json['currency_ID'],
      currencyDETAIL: "product.fromJson(jsonDecode(json['currency_DETAIL']))",
      productitemDETAIL:
          "product.fromJson(jsonDecode(json['productitem_DETAIL']))",
      pricelevelID: json['PRICELEVEL_ID'],
      pricelevelDETAIL:
          "product.fromJson(jsonDecode(json['pricelevelDETAIL']))",
      productitemQUANTITY: json['productitem_QUANTITY'],
      productitemUNITPRICE: json['productitem_UNITPRICE'],
    );
  }
}
