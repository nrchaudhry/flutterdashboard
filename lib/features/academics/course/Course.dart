 

//import '../author/Author.dart';

import 'dart:convert';

import '../qualification/Qualification.dart';

class Course {
  final int courseID;
  final int qualificationID;
  final Qualification qualificationDETAIL;
  final String courseTITLE;
  final String courseCODE;
  final String courseSHORTTITLE;
  final String courseINTRODUCTION;
  final String courseLEVEL;
  final String minimumDURATION;
  final String maximumDURATION;
  final String minimumCREDITHOURS;
  final String maximumCREDITHOURS;
  final String pathway;
  final String slcCOURSECODE;
  final String laraCODE;
  final int qualificationtypeID;
  final int provisiontypeID;
  final int regulatorybodyID;
  final int teachertrainingcourseID;
  final int courseaimID;
  final String mandatoryMODULES;
  final String optionalMODULES;
  final String studyskillMODULES;
  final String isactive;

  const Course({
    required this.courseID,
    required this.qualificationID,
    required this.qualificationDETAIL,
    required this.courseTITLE,
    required this.courseCODE,
    required this.courseSHORTTITLE,
    required this.courseINTRODUCTION,
    required this.courseLEVEL,
    required this.minimumDURATION,
    required this.maximumDURATION,
    required this.minimumCREDITHOURS,
    required this.maximumCREDITHOURS,
    required this.pathway,
    required this.slcCOURSECODE,
    required this.laraCODE,
    required this.qualificationtypeID,
    required this.provisiontypeID,
    required this.regulatorybodyID,
    required this.teachertrainingcourseID,
    required this.courseaimID,
    required this.mandatoryMODULES,
    required this.optionalMODULES,
    required this.studyskillMODULES,
    required this.isactive,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseID: json['course_ID'],
      qualificationID: json['qualification_ID'],
      qualificationDETAIL: Qualification.fromJson(jsonDecode(json['qualification_DETAIL'])),
      courseTITLE: json['course_TITLE'],
      courseCODE: json['course_CODE'],
      courseSHORTTITLE: json['course_SHORTTITLE'],
      courseINTRODUCTION: json['course_INTRODUCTION'],
      courseLEVEL: json['course_LEVEL'],
      minimumDURATION: json['minimum_DURATION'],
      maximumDURATION: json['maximum_DURATION'],
      minimumCREDITHOURS: json['minimum_CREDITHOURS'],
      maximumCREDITHOURS: json['maximum_CREDITHOURS'],
      pathway: json['pathway'],
      slcCOURSECODE: json['slc_COURSECODE'],
      laraCODE: json['lara_CODE'],
      qualificationtypeID: json['qualificationtype_ID'],
      provisiontypeID: json['provisiontype_ID'],
      regulatorybodyID: json['regulatorybody_ID'],
      teachertrainingcourseID: json['teachertrainingcourse_ID'],
      courseaimID: json['courseaim_ID'],
      mandatoryMODULES: json['mandatory_MODULES'],
      optionalMODULES: json['optional_MODULES'],
      studyskillMODULES: json['studyskill_MODULES'],
      isactive: json['isactive'],
    );
  }
}
