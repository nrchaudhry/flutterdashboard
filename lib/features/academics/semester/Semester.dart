import 'dart:convert';

import '../academicsyear/AcademicsYear.dart';
import '../university/University.dart';

class Semester {
  final int semesterID;
  final int universityID;
  final University universityDETAIL;
  final int academicsyearID;
  final Academicsyear academicsyearDETAIL;
  final String semesterDESC;
  final String semesterSTARTDATE;
  final String semesterENDDATE;
  final String isactive;

  const Semester({
    required this.semesterID,
    required this.universityID,
    required this.universityDETAIL,
    required this.academicsyearID,
    required this.academicsyearDETAIL,
    required this.semesterDESC,
    required this.semesterSTARTDATE,
    required this.semesterENDDATE,
    required this.isactive,
  });

  factory Semester.fromJson(Map<String, dynamic> json) {
    return Semester(
      semesterID: json['semester_ID'],
      universityID: json['university_ID'],
      universityDETAIL: University.fromJson(jsonDecode(json['university_DETAIL'])),
      academicsyearID: json['academicsyear_ID'],
      academicsyearDETAIL: Academicsyear.fromJson(jsonDecode(json['academicsyear_DETAIL'])),
      semesterDESC: json['semester_DESC'],
      semesterSTARTDATE: json['semester_STARTDATE'],
      semesterENDDATE: json['semester_ENDDATE'],
      isactive: json['isactive'],
    );
  }
}
