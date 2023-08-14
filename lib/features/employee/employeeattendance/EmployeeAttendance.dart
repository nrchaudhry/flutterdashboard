import 'dart:convert';

import '../employee/Employee.dart';

class Employeeattendance {
  final int employeeattendanceID;
  final int employeeID;
  final Employee employeeDETAIL;
  final String attendanceDATE;
  final String attendancestatusID;
  final String isactive;

  const Employeeattendance({
    required this.employeeattendanceID,
    required this.employeeID,
    required this.employeeDETAIL,
    required this.attendanceDATE,
    required this.attendancestatusID,
    required this.isactive,
  });

  factory Employeeattendance.fromJson(Map<String, dynamic> json) {
    return Employeeattendance(
      employeeattendanceID: json['employeeattendance_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])), 
      attendanceDATE: json['attendance_DATE'],
      attendancestatusID: json['attendancestatus_ID'],
      isactive: json['isactive'],
    );
  }
}
