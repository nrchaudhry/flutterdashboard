
//import '../author/Author.dart';

class Intake {
  final int intakeID;
  final int academicsyearID;
  final int universityID;
  final String intakeDESC;
  final String isadmissionopen;
  final String isactive;

  const Intake({
    required this.intakeID,
    required this.academicsyearID,
    required this.universityID,
    required this.intakeDESC,
    required this.isadmissionopen,
    required this.isactive,
  });

  factory Intake.fromJson(Map<String, dynamic> json) {
    return Intake(
      intakeID: json['intake_ID'],
      academicsyearID: json['academicsyear_ID'],
      universityID: json['university_ID'],
      intakeDESC: json['intake_DESC'],
      isadmissionopen: json['isadmissionopen'],
      isactive: json['isactive'],
    );
  }
}
