class ProductCategory {
  final int productcategoryID;
  final dynamic productcategoryparentID;
  final dynamic productcategoryorderNo;
  final dynamic productcategoryCODE;
  final dynamic productcategoryNAME;
  final dynamic productcategoryDESC;
  final dynamic productcategoryiconURL;
  final String isactive;

  const ProductCategory({
    required this.productcategoryID,
    required this.productcategoryparentID,
    required this.productcategoryorderNo,
    required this.productcategoryCODE,
    required this.productcategoryNAME,
    required this.productcategoryDESC,
    required this.productcategoryiconURL,
    required this.isactive,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
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
