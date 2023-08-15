import 'dart:convert';

import '../person/Person.dart'; 

class Personeducationinstitute {
  final int personinstituteID;
  final String personinstituteENDDATE;
  final String personinstituteSTARTDATE;
  final String educationinstituteDESC;
  final int educationinstituteID;
  final int ducationattendancemodeID;
  final int personID;
  final Person personDETAIL;
  final String recievedqualification;
  final String isactive;

  const Personeducationinstitute({
    required this.personinstituteID,
     required this.personID,
    required this.personDETAIL,
    required this.personinstituteENDDATE,
    required this.personinstituteSTARTDATE,
    required this.educationinstituteDESC,
    required this.educationinstituteID,
    required this.ducationattendancemodeID,
    required this.recievedqualification,
    required this.isactive,
  });

  factory Personeducationinstitute.fromJson(Map<String, dynamic> json) {
    return Personeducationinstitute(
      personinstituteID: json['personinstitute_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      personinstituteENDDATE: json['personinstitute_ENDDATE'],
      personinstituteSTARTDATE: json['personinstitute_STARTDATE'],
      educationinstituteDESC: json['educationinstitute_DESC'],
    
      educationinstituteID: json['educationinstitute_ID'],
      ducationattendancemodeID: json['ducationattendancemode_ID'],
      recievedqualification: json['recievedqualification'],
      isactive: json['isactive'],
    );
  }
}
