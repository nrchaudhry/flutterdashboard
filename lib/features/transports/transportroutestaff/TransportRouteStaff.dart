import 'dart:convert';

//import '../university/University.dart';

class Transportroutestaff {
  final int transportroutestaffID;
  final int transportstaffID;
  final String transportstaffDETAIL;
  final int transportrouteID;
  final String transportrouteDETAIL;
  final String transportroutestaffDATE;
  final String isactive;

  const Transportroutestaff({
    required this.transportroutestaffID,
    required this.transportstaffID,
    required this.transportstaffDETAIL,
    required this.transportrouteID,
    required this.transportrouteDETAIL,
    required this.transportroutestaffDATE,
    required this.isactive,
  });

  factory Transportroutestaff.fromJson(Map<String, dynamic> json) {
    return Transportroutestaff(
      transportroutestaffID: json['transportroutestaffID'],
      transportstaffID: json['transportstaffID'],
      transportstaffDETAIL:
          "Transportstaff.fromJson(jsonDecode(json['transportstaffDETAIL']))",
      transportrouteID: json['transportrouteID'],
      transportrouteDETAIL:
          "Transportroute.fromJson(jsonDecode(json['transportrouteDETAIL']))",
      transportroutestaffDATE: json['transportroutestaffDATE'],
      isactive: json['isactive'],
    );
  }
}
