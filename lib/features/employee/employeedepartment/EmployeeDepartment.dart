import 'dart:convert';

import '../employee/Employee.dart';

class Employeedepartment {
  final int employeedepartmentID;
  final int employeeID;
  final Employee employeeDETAIL;
  // final int departmenttoID;
  // final Departmentto departmenttoDETAIL;
  // final int departmentfromID;
  // final Departmentfrom departmentfromDETAIL;
  final int employeementtypeID;
  final String notificationNUMBER;
  final String notificationDATE;
  final String startDATE;
  final String endDATE;
  final String officeEXT;
  final String isactive;

  const Employeedepartment({
    required this.employeedepartmentID,
    required this.employeeID,
    required this.employeeDETAIL,
    // required this.departmenttoID,
    // required this.departmenttoDETAIL,
    // required this.departmentfromID,
    // required this.departmentfromDETAIL,
    required this.employeementtypeID,
    required this.notificationNUMBER,
    required this.notificationDATE,
    required this.startDATE,
    required this.endDATE,
    required this.officeEXT,
    required this.isactive,
  });

  factory Employeedepartment.fromJson(Map<String, dynamic> json) {
    return Employeedepartment(
      employeedepartmentID: json['employeedepartment_ID'],
      employeeID: json['employee_ID'],
      employeeDETAIL: Employee.fromJson(jsonDecode(json['employee_DETAIL'])),
      // departmenttoID: json['departmentto_ID'],
      // departmenttoDETAIL: Departmentto.fromJson(jsonDecode(json['departmentto_DETAIL'])),
      // departmentfromID: json['departmentfrom_ID'],
      // departmentfromDETAIL: Departmentfrom.fromJson(jsonDecode(json['departmentfrom_DETAIL'])),
      employeementtypeID: json['employeementtype_ID'],
      notificationNUMBER: json['notification_NUMBER'],
      notificationDATE: json['notification_DATE'],
      startDATE: json['start_DATE'],
      endDATE: json['end_DATE'],
      officeEXT: json['office_EXT'],
      isactive: json['isactive'],
    );
  }
}
