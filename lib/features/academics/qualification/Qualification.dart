
//import '../author/Author.dart';

class Qualification {
  final int qualificationID;
  final String qualificationCODE;
  final String qualificationNAME;
  final String qualificationDESCRIPTION;
  final String isactive;

  const Qualification({
    required this.qualificationID,
    required this.qualificationCODE,
    required this.qualificationNAME,
    required this.qualificationDESCRIPTION,
    required this.isactive,
  });

  factory Qualification.fromJson(Map<String, dynamic> json) {
    return Qualification(
      qualificationID: json['qualification_ID'],
      qualificationCODE: json['qualification_CODE'],
      qualificationNAME: json['qualification_NAME'],
      qualificationDESCRIPTION: json['qualification_DESCRIPTION'],
      isactive: json['isactive'],
    );
  }
}
