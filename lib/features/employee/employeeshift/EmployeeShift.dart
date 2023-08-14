import 'dart:convert';

import '../employee/Employee.dart';
import '../shift/Shift.dart';

class Employeeshift {
  final int employeeshiftID;
  final int employeeID;
  final Employee employeeDETAIL;
  final int shiftID;
  final Shift shiftDETAIL;
  final String isactive;

  const Employeeshift({
    required this.employeeshiftID,
    required this.employeeID,
    required this.employeeDETAIL,
    required this.shiftID,
    required this.shiftDETAIL,
    required this.isactive,
  });

  factory Employeeshift.fromJson(Map<String, dynamic> json) {
    return Employeeshift(
      employeeshiftID: json['employeeshift_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])),
      shiftID: json['shift_ID'],
      shiftDETAIL: Shift.fromJson(jsonDecode(json['shift_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
