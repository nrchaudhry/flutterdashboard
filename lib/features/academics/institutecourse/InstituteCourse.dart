import 'dart:convert';

import '../course/Course.dart';
import '../institute/Institute.dart';

class Institutecourse {
  final int institutecourseID;
  final String institutecourseCODE;
  final String institutecourseTITLE;
  final String institutecourseSHORTTITLE;
  final int institutecourseCREDITHOURS;
  final int instituteID;
  final Institute instituteDETAIL;
  final int courseID;
  final Course courseDETAIL;
  final String isactive;

  const Institutecourse({
    required this.institutecourseID,
    required this.institutecourseCODE,
    required this.institutecourseTITLE,
    required this.institutecourseSHORTTITLE,
    required this.institutecourseCREDITHOURS,
    required this.instituteID,
    required this.instituteDETAIL,
    required this.courseID,
    required this.courseDETAIL,
    required this.isactive,
  });

  factory Institutecourse.fromJson(Map<String, dynamic> json) {
    return Institutecourse(
      institutecourseID: json['institutecourse_ID'],
      institutecourseCODE: json['institutecourse_CODE'],
      institutecourseTITLE: json['institutecourse_TITLE'],
      institutecourseSHORTTITLE: json['institutecourse_SHORTTITLE'],
      institutecourseCREDITHOURS: json['institutecourse_CREDITHOURS'],
      instituteID: json['institute_ID'],
      instituteDETAIL: Institute.fromJson(jsonDecode(json['institute_DETAIL'])),
      courseID: json['course_ID'],
      courseDETAIL: Course.fromJson(jsonDecode(json['course_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
