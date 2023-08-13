import 'dart:convert';

import '../building/Building.dart';

class Room {
  final int roomID;
  final int buildingID;
  final Building buildingDETAIL;
  final String roomCODE;
  final String roomNAME;
  final String roomCAPACITY;
  final String roomFLOOR;
  final int roomtypeID;
  final String isactive;

  const Room({
    required this.roomID,
    required this.buildingID,
    required this.buildingDETAIL,
    required this.roomCODE,
    required this.roomNAME,
    required this.roomCAPACITY,
    required this.roomFLOOR,
    required this.roomtypeID,
    required this.isactive,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      roomID: json['room_ID'],
      buildingID: json['building_ID'],
      buildingDETAIL: Building.fromJson(jsonDecode(json['building_DETAIL'])),
      roomCODE: json['room_CODE'],
      roomNAME: json['room_NAME'],
      roomCAPACITY: json['room_CAPACITY'],
      roomFLOOR: json['room_FLOOR'],
      roomtypeID: json['roomtype_ID'],
      isactive: json['isactive'],
    );
  }
}
