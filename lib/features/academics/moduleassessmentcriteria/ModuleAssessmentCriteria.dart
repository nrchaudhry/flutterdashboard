
//import '../author/Author.dart';

class Moduleassessmentcriteria {
  final int assessmentcriteriaID;
  final int assessmentcriteriaCODE;
  final int assessmentcriteriaNO;
  final String assessmentcriteriaDESC;
  final String learningoutcomeID;
  final int moduleID;
  final String isactive;

  const Moduleassessmentcriteria({
    required this.assessmentcriteriaID,
    required this.assessmentcriteriaCODE,
    required this.assessmentcriteriaNO,
    required this.assessmentcriteriaDESC,
    required this.learningoutcomeID,
    required this.moduleID,
    required this.isactive,
  });

  factory Moduleassessmentcriteria.fromJson(Map<String, dynamic> json) {
    return Moduleassessmentcriteria(
      assessmentcriteriaID: json['assessmentcriteria_ID'],
      assessmentcriteriaCODE: json['assessmentcriteria_CODE'],
      assessmentcriteriaNO: json['assessmentcriteria_NO'],
      assessmentcriteriaDESC: json['assessmentcriteria_DESC'],
      learningoutcomeID: json['learningoutcome_ID'],
      moduleID: json['module_ID'],
      isactive: json['isactive'],
    );
  }
}
