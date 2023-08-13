import 'dart:convert';

import '../campus/Campus.dart';
import '../semester/Semester.dart';
import '../university/University.dart';

class Semestertimeslot {
  final int semestertimeslotID;
  final int semesterID;
  final Semester semesterDETAIL;
  final int campusID;
  final Campus campusDETAIL;
  final int universityID;
  final University universityDETAIL;
  final String weekdayID;
  final String semestertimeslotSTART;
  final String semestertimeslotEND;
  final String isactive;

  const Semestertimeslot({
    required this.semestertimeslotID,
    required this.semesterID,
    required this.semesterDETAIL,
    required this.campusID,
    required this.campusDETAIL,
    required this.universityID,
    required this.universityDETAIL,
    required this.weekdayID,
    required this.semestertimeslotSTART,
    required this.semestertimeslotEND,
    required this.isactive,
  });

  factory Semestertimeslot.fromJson(Map<String, dynamic> json) {
    return Semestertimeslot(
      semestertimeslotID: json['semestertimeslot_ID'],
      semesterID: json['semester_ID'],
      semesterDETAIL: Semester.fromJson(jsonDecode(json['semester_DETAIL'])),
      campusID: json['campus_ID'],
      campusDETAIL: Campus.fromJson(jsonDecode(json['campus_DETAIL'])),
      universityID: json['university_ID'],
      universityDETAIL: University.fromJson(jsonDecode(json['university_DETAIL'])),
      weekdayID: json['weekday_ID'],
      semestertimeslotSTART: json['semestertimeslot_START'],
      semestertimeslotEND: json['semestertimeslot_END'],
      isactive: json['isactive'],
    );
  }
}
