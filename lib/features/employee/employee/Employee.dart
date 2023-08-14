import 'dart:convert';

import '../../company/company/Company.dart';
import '../../person/person/Person.dart';

class Employee {
  final int employeeID;
  final int personID;
  final Person personDETAIL;
  final int companyID;
  final Company companyDETAIL;
  final String employeeNO;
  final String issalerep;
  final String isactive;

  const Employee({
    required this.employeeID,
    required this.personID,
    required this.personDETAIL,
    required this.companyID,
    required this.companyDETAIL,
    required this.employeeNO,
    required this.issalerep,
    required this.isactive,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      employeeID: json['employee_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      companyID: json['company_ID'],
      companyDETAIL: Company.fromJson(jsonDecode(json['company_DETAIL'])),
      employeeNO: json['employee_NO'],
      issalerep: json['issalerep'],
      isactive: json['isactive'],
    );
  }
}
