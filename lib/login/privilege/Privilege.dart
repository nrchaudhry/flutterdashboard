import 'dart:convert'; 

import '../privilegecategory/PrivilegeCategory.dart';

class Privilege {
  final int privilegeID;
  final int privilegecategoryID;
  final PrivilegeCategory privilegecategoryDETAIL;
  final String privilegeorderNO;
  final String privilegeNAME;
  final String privilegeDESCRIPTION;
  final String privilegeURL;
  final String ismenuprivilege;
  final String isactive;

  const Privilege({
    required this.privilegeID,
    required this.privilegecategoryID,
    required this.privilegecategoryDETAIL,
    required this.privilegeorderNO,
    required this.privilegeNAME,
    required this.privilegeDESCRIPTION,
    required this.privilegeURL,
    required this.ismenuprivilege,
    required this.isactive,
  });

  factory Privilege.fromJson(Map<String, dynamic> json) {
    return Privilege(
      privilegeID: json['privilege_ID'],
      privilegecategoryID: json['privilegecategory_ID'],
      privilegecategoryDETAIL: PrivilegeCategory.fromJson(jsonDecode(json['privilegecategory_DETAIL'])),
      privilegeorderNO: json['privilegeorder_NO'],
      privilegeNAME: json['privilege_NAME'],
      privilegeDESCRIPTION: json['privilege_DESCRIPTION'],
      privilegeURL: json['privilege_URL'],
      ismenuprivilege: json['ismenuprivilege'],
      isactive: json['isactive'],
    );
  }
}
