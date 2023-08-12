 

//import '../author/Author.dart';

class Intakecourse {
  final int intakecourseID;
  final int courseID;
  final int intakeID;
  final int campusID;
  final int locationstudyID;
  final int coursefeeplanID;
  final int coursemodeID;
  final String intakecourseSTARTDATE;
  final String intakecourseENDDATE;
  final String selffinanceFEE;
  final String netFEE;
  final String grossFEE;
  final String ageLIMIT;
  final String hoursPERWEEK;
  final int weeksPERYEAR;
  final String isactive;

  const Intakecourse({
    required this.intakecourseID,
    required this.courseID,
    required this.intakeID,
    required this.campusID,
    required this.locationstudyID,
    required this.coursefeeplanID,
    required this.coursemodeID,
    required this.intakecourseSTARTDATE,
    required this.intakecourseENDDATE,
    required this.selffinanceFEE,
    required this.netFEE,
    required this.grossFEE,
    required this.ageLIMIT,
    required this.hoursPERWEEK,
    required this.weeksPERYEAR,
    required this.isactive,
  });

  factory Intakecourse.fromJson(Map<String, dynamic> json) {
    return Intakecourse(
      intakecourseID: json['intakecourse_ID'],
      courseID: json['course_ID'],
      intakeID: json['intake_ID'],
      campusID: json['campus_ID'],
      locationstudyID: json['locationstudy_ID'],
      coursefeeplanID: json['coursefeeplan_ID'],
      coursemodeID: json['coursemode_ID'],
      intakecourseSTARTDATE: json['intakecourse_STARTDATE'],
      intakecourseENDDATE: json['intakecourse_ENDDATE'],
      selffinanceFEE: json['selffinance_FEE'],
      netFEE: json['net_FEE'],
      grossFEE: json['gross_FEE'],
      ageLIMIT: json['age_LIMIT'],
      hoursPERWEEK: json['hours_PERWEEK'],
      weeksPERYEAR: json['weeks_PERYEAR'],
      isactive: json['isactive'],
    );
  }
}
