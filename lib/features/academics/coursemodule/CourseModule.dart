import 'dart:convert';

import '../course/Course.dart';
import '../module/Module.dart';

class Coursemodule {
  final int coursemoduleID;
  final int moduleID;
  final Module moduleDETAIL;
  final int courseID;
  final Course courseDETAIL;
  final int coursemoduletypeID;
  final String isactive;

  const Coursemodule({
    required this.coursemoduleID,
    required this.moduleID,
    required this.moduleDETAIL,
    required this.courseID,
    required this.courseDETAIL,
    required this.coursemoduletypeID,
    required this.isactive,
  });

  factory Coursemodule.fromJson(Map<String, dynamic> json) {
    return Coursemodule(
      coursemoduleID: json['coursemodule_ID'],
      moduleID: json['module_ID'],
      moduleDETAIL: Module.fromJson(jsonDecode(json['module_DETAIL'])),
      courseID: json['course_ID'],
      courseDETAIL: Course.fromJson(jsonDecode(json['course_DETAIL'])),
      coursemoduletypeID: json['coursemoduletype_ID'],
      isactive: json['isactive'],
    );
  }
}
