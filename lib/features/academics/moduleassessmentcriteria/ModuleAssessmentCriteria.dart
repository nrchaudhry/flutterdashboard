import 'dart:convert';

import '../module/Module.dart';
import '../modulelearningoutcome/ModuleLearningOutcome.dart';

class Moduleassessmentcriteria {
  final int assessmentcriteriaID;
  final int assessmentcriteriaCODE;
  final int assessmentcriteriaNO;
  final String assessmentcriteriaDESC;
  final int learningoutcomeID;
  final Modulelearningoutcome learningoutcomeDETAIL;
  final int moduleID;
  final Module moduleDETAIL;  
  final String isactive;

  const Moduleassessmentcriteria({
    required this.assessmentcriteriaID,
    required this.assessmentcriteriaCODE,
    required this.assessmentcriteriaNO,
    required this.assessmentcriteriaDESC,
    required this.learningoutcomeID,
    required this.learningoutcomeDETAIL, 
    required this.moduleID,
    required this.moduleDETAIL,
    required this.isactive,
  });

  factory Moduleassessmentcriteria.fromJson(Map<String, dynamic> json) {
    return Moduleassessmentcriteria(
      assessmentcriteriaID: json['assessmentcriteria_ID'],
      assessmentcriteriaCODE: json['assessmentcriteria_CODE'],
      assessmentcriteriaNO: json['assessmentcriteria_NO'],
      assessmentcriteriaDESC: json['assessmentcriteria_DESC'],
      learningoutcomeID: json['learningoutcome_ID'],
      learningoutcomeDETAIL: Modulelearningoutcome.fromJson(jsonDecode(json['learningoutcome_DETAIL'])),
      moduleID: json['module_ID'],
      moduleDETAIL: Module.fromJson(jsonDecode(json['module_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
