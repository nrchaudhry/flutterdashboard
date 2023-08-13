import 'dart:convert';

import '../university/University.dart';

class Academicsyear {
  final int academicsyearID;
  final int universityID;
  final University universityDETAIL;
  final String academicsyearDESC;
  final String academicsyearSTARTDATE;
  final String academicsyearENDDATE;
  final String isactive;

  const Academicsyear({
    required this.academicsyearID,
    required this.universityID,
    required this.universityDETAIL,
    required this.academicsyearDESC,
    required this.academicsyearSTARTDATE,
    required this.academicsyearENDDATE,
    required this.isactive,
  });

  factory Academicsyear.fromJson(Map<String, dynamic> json) {
    return Academicsyear(
      academicsyearID: json['academicsyear_ID'],
      universityID: json['university_ID'],
      universityDETAIL: University.fromJson(jsonDecode(json['university_DETAIL'])), 
      academicsyearDESC: json['academicsyear_DESC'],
      academicsyearSTARTDATE: json['academicsyear_STARTDATE'],
      academicsyearENDDATE: json['academicsyear_ENDDATE'],
      isactive: json['isactive'],
    );
  }
}
