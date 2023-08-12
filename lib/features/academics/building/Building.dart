 
//import '../author/Author.dart';

class Building {
  final int buildingID;
  final int campusID;
  final int universityID;
  final String buildingCODE;
  final String buildingNAME;
  final String longitude;
  final String latitude;
  final String isactive;

  const Building({
    required this.buildingID,
    required this.campusID,
    required this.universityID,
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
      universityID: json['university_ID'],
      buildingCODE: json['building_CODE'],
      buildingNAME: json['building_NAME'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      isactive: json['isactive'],
    );
  }
}
