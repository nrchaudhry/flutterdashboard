import 'dart:convert';

import '../employee/Employee.dart';

class Employeeleave {
  final int employeeleaveID;
  final int employeeID;
  final Employee employeeDETAIL;
  final int leavetypeID;
  final String leaveDATE;
  final String leaveREASON;
  final String leavefromDATE;
  final String leavetoDATE;
  final String isactive;

  const Employeeleave({
    required this.employeeleaveID,
    required this.employeeID,
    required this.employeeDETAIL,
    required this.leavetypeID,
    required this.leaveDATE,
    required this.leaveREASON,
    required this.leavefromDATE,
    required this.leavetoDATE,
    required this.isactive,
  });

  factory Employeeleave.fromJson(Map<String, dynamic> json) {
    return Employeeleave(
      employeeleaveID: json['employeeleave_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])),
      leavetypeID: json['leavetype_ID'],
      leaveDATE: json['leave_DATE'],
      leaveREASON: json['leave_REASON'],
      leavefromDATE: json['leavefrom_DATE'],
      leavetoDATE: json['leaveto_DATE'],
      isactive: json['isactive'],
    );
  }
}
