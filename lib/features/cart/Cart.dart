productitem_ID: productitems[i].productitem_ID,
        productunit_CODE: "1",
        productitem_QUANTITY: productitems[i].quantity,
        pricelevel_ID: productitems[i].pricelevel,
        productitem_RATE: productitems[i].unitprice,
        taxcode_ID: productitems[i].taxschedule,
        vat: productitems[i].vat,
        isPermanent: productitems[i].isPermanent

class Cart {
  final int productitemID;
  final dynamic productunit_CODE;
  final dynamic productitem_QUANTITY;
  final dynamic pricelevel_ID;
  final dynamic productitem_RATE;
  final dynamic taxcode_ID;
  final dynamic vat;
  final String isactive;

  const Cart({
    required this.productcategoryID,
    required this.productcategoryparentID,
    required this.productcategoryorderNo,
    required this.productcategoryCODE,
    required this.productcategoryNAME,
    required this.productcategoryDESC,
    required this.productcategoryiconURL,
    required this.isactive,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      productcategoryID: json['productcategory_ID'],
      productcategoryparentID: json['productcategoryparent_ID'],
      productcategoryorderNo: json['productcategoryorder_No'],
      productcategoryCODE: json['productcategory_CODE'],
      productcategoryNAME: json['productcategory_NAME'],
      productcategoryDESC: json['productcategory_DESC'],
      productcategoryiconURL: json['productcategoryicon_URL'],
      isactive: json['isactive'],
    );
  }
}
