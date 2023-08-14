import 'dart:convert';

import '../employee/Employee.dart';

class Employeeperformance {
  final int employeeperformanceID;
  final int employeeID;
  final Employee employeeDETAIL;
  final String grading;
  final int attendancestatusID;
  final String isactive;

  const Employeeperformance({
    required this.employeeperformanceID,
    required this.employeeID,
    required this.employeeDETAIL,
    required this.grading,
    required this.attendancestatusID,
    required this.isactive,
  });

  factory Employeeperformance.fromJson(Map<String, dynamic> json) {
    return Employeeperformance(
      employeeperformanceID: json['employeeperformance_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])),
      grading: json['grading'],
      attendancestatusID: json['attendancestatus_ID'],
      isactive: json['isactive'],
    );
  }
}
