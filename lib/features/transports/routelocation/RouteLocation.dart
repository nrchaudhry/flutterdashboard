import 'dart:convert';

//import '../university/University.dart';

class Routelocation {
  final int routelocationID;
  final int transportrouteID;
  final String transportrouteDETAIL;
  final int locationID;
  final String locationDETAIL;
  final String isactive;

  const Routelocation({
    required this.routelocationID,
    required this.transportrouteID,
    required this.transportrouteDETAIL,
    required this.locationID,
    required this.locationDETAIL,
    required this.isactive,
  });

  factory Routelocation.fromJson(Map<String, dynamic> json) {
    return Routelocation(
      routelocationID: json['routelocation_ID'],
      transportrouteID: json['transportroute_ID'],
      transportrouteDETAIL:
          "Transportroute.fromJson(jsonDecode(json['transportroute_DETAIL']))",
      locationID: json['location_ID'],
      locationDETAIL: "Location.fromJson(jsonDecode(json['location_DETAIL']))",
      isactive: json['isactive'],
    );
  }
}
