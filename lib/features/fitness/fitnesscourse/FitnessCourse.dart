class Fitnesscourse {
  final int fitnesscourseID;
  final int timeunitID;
  final String fitnesscourseCODE;
  final String fitnesscourseNAME;
  final String fitnesscourseDURATION;
  final String fitnesscourseDESCRIPTION;
  final String isactive;

  const Fitnesscourse({
    required this.fitnesscourseID,
    required this.timeunitID,
    required this.fitnesscourseCODE,
    required this.fitnesscourseNAME,
    required this.fitnesscourseDURATION,
    required this.fitnesscourseDESCRIPTION,
    required this.isactive,
  });

  factory Fitnesscourse.fromJson(Map<String, dynamic> json) {
    return Fitnesscourse(
      fitnesscourseID: json['fitnesscourse_ID'],
      timeunitID: json['timeunit_ID'],
      fitnesscourseCODE: json['fitnesscourse_CODE'],
      fitnesscourseNAME: json['fitnesscourse_NAME'],
      fitnesscourseDURATION: json['fitnesscourse_DURATION'],
      fitnesscourseDESCRIPTION: json['fitnesscourse_DESCRIPTION'],
      isactive: json['isactive'],
    );
  }
}
