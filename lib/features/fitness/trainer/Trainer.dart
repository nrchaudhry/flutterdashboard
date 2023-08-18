import 'dart:convert';

import '../../employee/employee/Employee.dart';

class Trainer {
  final int trainerID;
  final int employeeID;
  final Employee employeeDETAIL;
  final String isactive;

  const Trainer({
    required this.trainerID,
    required this.employeeID,
    required this.employeeDETAIL,
    required this.isactive,
  });

  factory Trainer.fromJson(Map<String, dynamic> json) {
    return Trainer(
      trainerID: json['trainer_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
