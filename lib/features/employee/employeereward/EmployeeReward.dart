import 'dart:convert';

import '../employee/Employee.dart';

class Employeereward {
  final int employeerewardID;
  final int employeeID;
  final Employee employeeDETAIL;
  final int rewardtypeID;
  final String batchIMAGE;
  final String isactive;

  const Employeereward({
    required this.employeerewardID,
    required this.employeeID,
    required this.employeeDETAIL,
    required this.rewardtypeID,
    required this.batchIMAGE,
    required this.isactive,
  });

  factory Employeereward.fromJson(Map<String, dynamic> json) {
    return Employeereward(
      employeerewardID: json['employeereward_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])),
      rewardtypeID: json['rewardtype_ID'],
      batchIMAGE: json['batch_IMAGE'],
      isactive: json['isactive'],
    );
  }
}
