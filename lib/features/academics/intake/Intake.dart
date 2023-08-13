import 'dart:convert';

import '../academicsyear/AcademicsYear.dart';
import '../university/University.dart';

class Intake {
  final int intakeID;
  final int academicsyearID;
  final Academicsyear academicsyearDETAIL;
  final int universityID;
  final University universityDETAIL;
  final String intakeDESC;
  final String isadmissionopen;
  final String isactive;

  const Intake({
    required this.intakeID,
    required this.academicsyearID,
    required this.academicsyearDETAIL,
    required this.universityID,
    required this.universityDETAIL,
    required this.intakeDESC,
    required this.isadmissionopen,
    required this.isactive,
  });

  factory Intake.fromJson(Map<String, dynamic> json) {
    return Intake(
      intakeID: json['intake_ID'],
      academicsyearID: json['academicsyear_ID'],
      academicsyearDETAIL: Academicsyear.fromJson(jsonDecode(json['academicsyear_DETAIL'])),
      universityID: json['university_ID'],
      universityDETAIL: University.fromJson(jsonDecode(json['university_DETAIL'])),
      intakeDESC: json['intake_DESC'],
      isadmissionopen: json['isadmissionopen'],
      isactive: json['isactive'],
    );
  }
}
