
//import '../author/Author.dart';

class Coursesubject {
  final int coursesubjectID;
  final int subjectID;
  final int courseID;
  final String subjectPERCENTAGE;
  final String isactive;

  const Coursesubject({
    required this.coursesubjectID,
    required this.subjectID,
    required this.courseID,
    required this.subjectPERCENTAGE,
    required this.isactive,
  });

  factory Coursesubject.fromJson(Map<String, dynamic> json) {
    return Coursesubject(
      coursesubjectID: json['coursesubject_ID'],
      subjectID: json['subject_ID'],
      courseID: json['course_ID'],
      subjectPERCENTAGE: json['subject_PERCENTAGE'],
      isactive: json['isactive'],
    );
  }
}
