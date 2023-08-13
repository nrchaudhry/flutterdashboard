 import 'dart:convert';

import '../campus/Campus.dart';
import '../course/Course.dart';
import '../intake/Intake.dart';

class Intakecourse {
  final int intakecourseID;
  final int intakeID;
  final Intake intakeDETAIL;
  final int courseID;
  final Course courseDETAIL;
  final int campusID;
  final Campus campusDETAIL;
  final int locationstudyID;
  final int coursefeeplanID;
  final int coursemodeID;
  final String intakecourseSTARTDATE;
  final String intakecourseENDDATE;
  final String selffinanceFEE;
  final String netFEE;
  final String grossFEE;
  final String ageLIMIT;
  final String hoursPERWEEK;
  final int weeksPERYEAR;
  final String isactive;

  const Intakecourse({
    required this.intakecourseID,
    required this.intakeID,
    required this.intakeDETAIL,
    required this.courseID,
    required this.courseDETAIL,
    required this.campusID,
    required this.campusDETAIL,
    required this.locationstudyID,
    required this.coursefeeplanID,
    required this.coursemodeID,
    required this.intakecourseSTARTDATE,
    required this.intakecourseENDDATE,
    required this.selffinanceFEE,
    required this.netFEE,
    required this.grossFEE,
    required this.ageLIMIT,
    required this.hoursPERWEEK,
    required this.weeksPERYEAR,
    required this.isactive,
  });

  factory Intakecourse.fromJson(Map<String, dynamic> json) {
    return Intakecourse(
      intakecourseID: json['intakecourse_ID'],
      intakeID: json['intake_ID'],
      intakeDETAIL: Intake.fromJson(jsonDecode(json['intake_DETAIL'])),
      courseID: json['course_ID'],
      courseDETAIL: Course.fromJson(jsonDecode(json['course_DETAIL'])),
      campusID: json['campus_ID'],
      campusDETAIL: Campus.fromJson(jsonDecode(json['campus_DETAIL'])),
      locationstudyID: json['locationstudy_ID'],
      coursefeeplanID: json['coursefeeplan_ID'],
      coursemodeID: json['coursemode_ID'],
      intakecourseSTARTDATE: json['intakecourse_STARTDATE'],
      intakecourseENDDATE: json['intakecourse_ENDDATE'],
      selffinanceFEE: json['selffinance_FEE'],
      netFEE: json['net_FEE'],
      grossFEE: json['gross_FEE'],
      ageLIMIT: json['age_LIMIT'],
      hoursPERWEEK: json['hours_PERWEEK'],
      weeksPERYEAR: json['weeks_PERYEAR'],
      isactive: json['isactive'],
    );
  }
}
