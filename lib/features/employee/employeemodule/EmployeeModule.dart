import 'dart:convert';

import '../../academics/module/Module.dart';
import '../../academics/semester/Semester.dart';
import '../employee/Employee.dart'; 

class Employeemodule {
  final int employeemoduleID;
  final int employeeID;
  final Employee employeeDETAIL;
  final int semesterID;
  final Semester semesterDETAIL;
  final int moduleID;
  final Module moduleDETAIL;
  final String moduleGROUP;
  final int employeemoduletypeID;
  final String isactive;

  const Employeemodule({
    required this.employeemoduleID,
    required this.employeeID,
    required this.employeeDETAIL,
    required this.semesterID,
    required this.semesterDETAIL,
    required this.moduleID,
    required this.moduleDETAIL,
    required this.moduleGROUP,
    required this.employeemoduletypeID,
    required this.isactive,
  });

  factory Employeemodule.fromJson(Map<String, dynamic> json) {
    return Employeemodule(
      employeemoduleID: json['employeemodule_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])),
      semesterID: json['semester_ID'],
      semesterDETAIL: Semester.fromJson(jsonDecode(json['semester_DETAIL'])),
      moduleID: json['module_ID'],
      moduleDETAIL: Module.fromJson(jsonDecode(json['module_DETAIL'])),
      moduleGROUP: json['module_GROUP'],
      employeemoduletypeID: json['employeemoduletype_ID'],
      isactive: json['isactive'],
    );
  }
}
