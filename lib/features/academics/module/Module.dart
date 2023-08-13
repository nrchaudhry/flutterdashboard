 import 'dart:convert';

import '../department/Department.dart';

class Module {
  final int moduleID;
  final String moduleCODE;
  final String moduleNO;
  final String moduleINTRODUCTION;
  final String moduleTITLE;
  final String moduleLEVEL;
  final String creditHOURS;
  final String guidedlearningHOURS;
  final int departmentID;
  final Department departmentDETAIL;  
  final String isactive;

  const Module({
    required this.moduleID,
    required this.moduleCODE,
    required this.moduleNO,
    required this.moduleINTRODUCTION,
    required this.moduleTITLE,
    required this.moduleLEVEL,
    required this.creditHOURS,
    required this.guidedlearningHOURS,
    required this.departmentID,
    required this.departmentDETAIL,    
    required this.isactive,
  });

  factory Module.fromJson(Map<String, dynamic> json) {
    return Module(
      moduleID: json['module_ID'],
      moduleCODE: json['module_CODE'],
      moduleNO: json['module_NO'],
      moduleINTRODUCTION: json['module_INTRODUCTION'],
      moduleTITLE: json['module_TITLE'],
      moduleLEVEL: json['module_LEVEL'],
      creditHOURS: json['credit_HOURS'],
      guidedlearningHOURS: json['guidedlearning_HOURS'],
      departmentID: json['department_ID'],
      departmentDETAIL: Department.fromJson(jsonDecode(json['department_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
