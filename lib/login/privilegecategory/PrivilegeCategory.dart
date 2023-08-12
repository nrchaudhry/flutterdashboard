import 'dart:convert'; 

class PrivilegeCategory {
  final int privilegecategoryID;
  final int applicationID;
  final String applicationDETAIL;
  final String privilegecategoryorderNO;
  final String privilegecategoryNAME;
  final String privilegecategoryDESCRIPTION;
  final String mediacontentICON;
  final String isactive;

  const PrivilegeCategory({
    required this.privilegecategoryID,
    required this.applicationID,
    required this.applicationDETAIL,
    required this.privilegecategoryorderNO,
    required this.privilegecategoryNAME,
    required this.privilegecategoryDESCRIPTION,
    required this.mediacontentICON,
    required this.isactive,
  });

  factory PrivilegeCategory.fromJson(Map<String, dynamic> json) {
    return PrivilegeCategory(
      privilegecategoryID: json['privilegecategory_ID'],
      applicationID: json['application_ID'],
      applicationDETAIL: json['application_DETAIL'],
      privilegecategoryorderNO: json['privilegecategory_DATETIME'],
      privilegecategoryNAME: json['privilegecategory_NAME'],
      privilegecategoryDESCRIPTION: json['privilegecategory_DESCRIPTION'],
      mediacontentICON: json['mediacontent_ICON'],
      isactive: json['isactive'],
    );
  }
}
