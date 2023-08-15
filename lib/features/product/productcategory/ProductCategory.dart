class Productcategory {
  final int productcategoryID;
  final int netsuiteID;
  final int productcategoryorderNo;
  final String productcategoryNAME;
  final String productcategoryDESC;
  final String productcategoryCODE;
  final int productcategoryparentID;
  final String quickbookID;
  final String isactive;

  const Productcategory({
    required this.productcategoryID,
    required this.netsuiteID,
    required this.productcategoryorderNo,
    required this.productcategoryNAME,
    required this.productcategoryDESC,
    required this.productcategoryCODE,
    required this.productcategoryparentID,
    required this.quickbookID,
    required this.isactive,
  });

  factory Productcategory.fromJson(Map<String, dynamic> json) {
    return Productcategory(
      productcategoryID: json['productcategory_ID'],
      netsuiteID: json['netsuite_ID'],
      productcategoryorderNo: json['productcategoryorder_No'],
      productcategoryNAME: json['productcategory_NAME'],
      productcategoryDESC: json['productcategory_DESC'],
      productcategoryCODE: json['productcategory_CODE'],
      productcategoryparentID: json['productcategoryparent_ID'],
      quickbookID: json['quickbook_ID'],
      isactive: json['isactive'],
    );
  }
}
