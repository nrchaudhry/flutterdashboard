class Attribute {
  final int attributeID;
  final int datatypeID;
  final String attributeKEY;
  final String attributeNAME;
  final String attributeDESCRIPTION;
  final String ATTRIBUTENETSUITEKEY;
  final String INPUTPATTERN;
  final String isactive;

  const Attribute({
    required this.attributeID,
    required this.datatypeID,
    required this.attributeKEY,
    required this.attributeNAME,
    required this.attributeDESCRIPTION,
    required this.ATTRIBUTENETSUITEKEY,
    required this.INPUTPATTERN,
    required this.isactive,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) {
    return Attribute(
      attributeID: json['attribute_ID'],
      datatypeID: json['datatype_ID'],
      attributeKEY: json['attribute_KEY'],
      attributeNAME: json['attribute_NAME'],
      attributeDESCRIPTION: json['attribute_DESCRIPTION'],
      ATTRIBUTENETSUITEKEY: json['ATTRIBUTENETSUITE_KEY'],
      INPUTPATTERN: json['INPUT_PATTERN'],
      isactive: json['isactive'],
    );
  }
}
