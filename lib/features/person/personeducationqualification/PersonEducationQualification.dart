import 'dart:convert';

import '../person/Person.dart'; 


class Personeducationqualification {
  final int personqualificationID;
  final int personID;
  final Person personDETAIL;
  final int educationsystemID;
  final int educationattendancemodeID;
  final int qualificationstatusID;
  final int gradingsystemID;
  final String dissertationTITLE;
  final String registrationNUMBER;
  final String qualificationSTARTDATE;
  final String qualificationENDDATE;
  final String totalMARKS;
  final String obtainedMARKS;
  final String obtainedPERCENTAGE;
  final String isactive;

  const Personeducationqualification({
    required this.personqualificationID,
    required this.personID,
    required this.personDETAIL,
    required this.educationsystemID,
    required this.educationattendancemodeID,
    required this.qualificationstatusID,
    required this.gradingsystemID,
    required this.dissertationTITLE,
    required this.registrationNUMBER,
    required this.qualificationSTARTDATE,
    required this.qualificationENDDATE,
    required this.totalMARKS,
    required this.obtainedMARKS,
    required this.obtainedPERCENTAGE,
    required this.isactive,
  });

  factory Personeducationqualification.fromJson(Map<String, dynamic> json) {
    return Personeducationqualification(
      personqualificationID: json['personeducationqualification_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      educationsystemID: json['educationsystem_ID'],
      educationattendancemodeID: json['educationattendancemode_ID'],
      qualificationstatusID: json['qualificationstatus_ID'],
      gradingsystemID: json['gradingsystem_ID'],
      dissertationTITLE: json['dissertation_TITLE'],
      registrationNUMBER: json['registration_NUMBER'],
      qualificationSTARTDATE: json['qualification_STARTDATE'],
      qualificationENDDATE: json['qualification_ENDDATE'],
      totalMARKS: json['total_MARKS'],
      obtainedMARKS: json['obtained_MARKS'],
      obtainedPERCENTAGE: json['obtained_PERCENTAGE'],
      isactive: json['isactive'],
    );
  }
}
