import 'dart:convert';

//import '../university/University.dart';

class Transportroutetruck {
  final int transportroutetruckID;
  final int transporttruckID;
  final String transporttruckDETAIL;
  final int transportrouteID;
  final String transportrouteDETAIL;
  final String transportroutetruckDATE;
  final String isactive;

  const Transportroutetruck({
    required this.transportroutetruckID,
    required this.transporttruckID,
    required this.transporttruckDETAIL,
    required this.transportrouteID,
    required this.transportrouteDETAIL,
    required this.transportroutetruckDATE,
    required this.isactive,
  });

  factory Transportroutetruck.fromJson(Map<String, dynamic> json) {
    return Transportroutetruck(
      transportroutetruckID: json['transportroutetruck_ID'],
      transporttruckID: json['transporttruck_ID'],
      transporttruckDETAIL:
          "Transporttruck.fromJson(jsonDecode(json['transporttruck_DETAIL']))",
      transportrouteID: json['transportroute_ID'],
      transportrouteDETAIL:
          "Transportroute.fromJson(jsonDecode(json['transportroute_DETAIL']))",
      transportroutetruckDATE: json['transportroutetruck_DATE'],
      isactive: json['isactive'],
    );
  }
}
