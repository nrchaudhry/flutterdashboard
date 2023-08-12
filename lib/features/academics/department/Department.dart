
//import '../author/Author.dart';

class Department {
  final int departmentID;
  final String departmentCODE;
  final String departmentNAME;
  final String departmentDESCRIPTION;
  final int collegeID;
  final int universityID;
  final String isactive;

  const Department({
    required this.departmentID,
    required this.departmentCODE,
    required this.departmentNAME,
    required this.departmentDESCRIPTION,
    required this.collegeID,
    required this.universityID,
    required this.isactive,
  });

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      departmentID: json['department_ID'],
      departmentCODE: json['department_CODE'],
      departmentNAME: json['department_NAME'],
      departmentDESCRIPTION: json['department_DESCRIPTION'],
      collegeID: json['college_ID'],
      universityID: json['university_ID'],
      isactive: json['isactive'],
    );
  }
}
