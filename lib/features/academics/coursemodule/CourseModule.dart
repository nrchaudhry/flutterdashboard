
//import '../author/Author.dart';

class Coursemodule {
  final int coursemoduleID;
  final int moduleID;
  final int courseID;
  final int coursemoduletypeID;
  final String isactive;

  const Coursemodule({
    required this.coursemoduleID,
    required this.moduleID,
    required this.courseID,
    required this.coursemoduletypeID,
    required this.isactive,
  });

  factory Coursemodule.fromJson(Map<String, dynamic> json) {
    return Coursemodule(
      coursemoduleID: json['coursemodule_ID'],
      moduleID: json['module_ID'],
      courseID: json['course_ID'],
      coursemoduletypeID: json['coursemoduletype_ID'],
      isactive: json['isactive'],
    );
  }
}
