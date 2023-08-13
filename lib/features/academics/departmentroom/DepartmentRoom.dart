import 'dart:convert';

import '../department/Department.dart';
import '../room/Room.dart';

class Departmentroom {
  final int departmentroomID;
  final int roomID;
  final Room roomDETAIL;
  final int departmentID;
  final Department departmentDETAIL;
  final String isactive;

  const Departmentroom({
    required this.departmentroomID,
    required this.roomID,
    required this.roomDETAIL,
    required this.departmentID,
    required this.departmentDETAIL,
    required this.isactive,
  });

  factory Departmentroom.fromJson(Map<String, dynamic> json) {
    return Departmentroom(
      departmentroomID: json['departmentroom_ID'],
      roomID: json['room_ID'],
      roomDETAIL: Room.fromJson(jsonDecode(json['room_DETAIL'])),
      departmentID: json['department_ID'],
      departmentDETAIL: Department.fromJson(jsonDecode(json['department_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
