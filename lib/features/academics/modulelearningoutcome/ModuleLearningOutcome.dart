import 'dart:convert';

import '../module/Module.dart';

class Modulelearningoutcome {
  final int learningoutcomeID;
  final int moduleID;
  final Module moduleDETAIL;
  final String learningoutcomeCODE;
  final String learningoutcomeNO;
  final String learningoutcomeDESC;
  final String learningoutcomeCONTENTLINK;
  final String learningoutcomeINTRODUCTION;
  final String isactive;

  const Modulelearningoutcome({
    required this.learningoutcomeID,
    required this.moduleID,
    required this.moduleDETAIL,
    required this.learningoutcomeCODE,
    required this.learningoutcomeNO,
    required this.learningoutcomeDESC,
    required this.learningoutcomeCONTENTLINK,
    required this.learningoutcomeINTRODUCTION,
    required this.isactive,
  });

  factory Modulelearningoutcome.fromJson(Map<String, dynamic> json) {
    return Modulelearningoutcome(
      learningoutcomeID: json['learningoutcome_ID'],
      moduleID: json['module_ID'],
      moduleDETAIL: Module.fromJson(jsonDecode(json['module_DETAIL'])),
      learningoutcomeCODE: json['learningoutcome_CODE'],
      learningoutcomeNO: json['learningoutcome_NO'],
      learningoutcomeDESC: json['learningoutcome_DESC'],
      learningoutcomeCONTENTLINK: json['learningoutcome_CONTENTLINK'],
      learningoutcomeINTRODUCTION: json['learningoutcome_INTRODUCTION'],
      isactive: json['isactive'],
    );
  }
}
