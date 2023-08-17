 import 'dart:convert';

import '../campus/Campus.dart';
import '../university/University.dart';

class Building {
  final int buildingID;
  final int campusID;
  final Campus campusDETAIL;
  final int universityID;
  final University universityDETAIL;
  final String buildingCODE;
  final String buildingNAME;
  final String longitude;
  final String latitude;
  final String isactive;

  const Building({
    required this.buildingID,
    required this.campusID,
    required this.campusDETAIL,
    required this.universityID,
    required this.universityDETAIL,
    required this.buildingCODE,
    required this.buildingNAME,
    required this.longitude,
    required this.latitude,
    required this.isactive,
  });

  factory Building.fromJson(Map<String, dynamic> json) {
    return Building(
      buildingID: json['building_ID'],
      campusID: json['campus_ID'],
      campusDETAIL: Campus.fromJson(jsonDecode(json['campus_DETAIL'])),
      universityID: json['university_ID'],
      universityDETAIL: University.fromJson(jsonDecode(json['university_DETAIL'])), 
      buildingCODE: json['building_CODE'],
      buildingNAME: json['building_NAME'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      isactive: json['isactive'],
    );
  }
}
