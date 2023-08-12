
//import '../author/Author.dart';

class Institutecourse {
  final int institutecourseID;
  final String institutecourseCODE;
  final String institutecourseTITLE;
  final String institutecourseSHORTTITLE;
  final int institutecourseCREDITHOURS;
  final int courseID;
  final int instituteID;
  final String isactive;

  const Institutecourse({
    required this.institutecourseID,
    required this.institutecourseCODE,
    required this.institutecourseTITLE,
    required this.institutecourseSHORTTITLE,
    required this.institutecourseCREDITHOURS,
    required this.courseID,
    required this.instituteID,
    required this.isactive,
  });

  factory Institutecourse.fromJson(Map<String, dynamic> json) {
    return Institutecourse(
      institutecourseID: json['institutecourse_ID'],
      institutecourseCODE: json['institutecourse_CODE'],
      institutecourseTITLE: json['institutecourse_TITLE'],
      institutecourseSHORTTITLE: json['institutecourse_SHORTTITLE'],
      institutecourseCREDITHOURS: json['institutecourse_CREDITHOURS'],
      courseID: json['course_ID'],
      instituteID: json['institute_ID'],
      isactive: json['isactive'],
    );
  }
}
