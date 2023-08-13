import 'dart:convert';

import '../college/College.dart';
import '../university/University.dart';

class Department {
  final int departmentID;
  final String departmentCODE;
  final String departmentNAME;
  final String departmentDESCRIPTION;
  final int collegeID;
  final College collegeDETAIL;
  final int universityID;
  final University universityDETAIL;
  final String isactive;

  const Department({
    required this.departmentID,
    required this.departmentCODE,
    required this.departmentNAME,
    required this.departmentDESCRIPTION,
    required this.collegeID,
    required this.collegeDETAIL,
    required this.universityID,
    required this.universityDETAIL,
    required this.isactive,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      departmentID: json['department_ID'],
      departmentCODE: json['department_CODE'],
      departmentNAME: json['department_NAME'],
      departmentDESCRIPTION: json['department_DESCRIPTION'],
      collegeID: json['college_ID'],
      collegeDETAIL: College.fromJson(jsonDecode(json['college_DETAIL'])),
      universityID: json['university_ID'],
      universityDETAIL: University.fromJson(jsonDecode(json['university_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
