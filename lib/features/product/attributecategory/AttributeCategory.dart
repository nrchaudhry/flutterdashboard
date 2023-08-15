class Attributecategory {
  final int attributecategoryID;
  final int attributecategoryparentID;
  final String attributecategoryNAME;
  final int attributecategoryorderNO;
  final String istabs;
  final String isactive;

  const Attributecategory({
    required this.attributecategoryID,
    required this.attributecategoryparentID,
    required this.attributecategoryNAME,
    required this.attributecategoryorderNO,
    required this.istabs,
    required this.isactive,
  });

  factory Attributecategory.fromJson(Map<String, dynamic> json) {
    return Attributecategory(
      attributecategoryID: json['attributecategory_ID'],
      attributecategoryparentID: json['attributecategoryparent_ID'],
      attributecategoryNAME: json['attributecategory_NAME'],
      attributecategoryorderNO: json['attributecategoryorder_NO'],
      istabs: json['istabs'],
      isactive: json['isactive'],
    );
  }
}
