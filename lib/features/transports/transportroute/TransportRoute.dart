import 'dart:convert';

//import '../university/University.dart';

class Transportroute {
  final int transportrouteID;
  final int colourID;
  final String colourDETAIL;
  final String transportrouteCODE;
  final String transportrouteTYPE;
  final String transportrouteDESC;
  final String isactive;

  const Transportroute({
    required this.transportrouteID,
    required this.colourID,
    required this.colourDETAIL,
    required this.transportrouteCODE,
    required this.transportrouteTYPE,
    required this.transportrouteDESC,
    required this.isactive,
  });

  factory Transportroute.fromJson(Map<String, dynamic> json) {
    return Transportroute(
      transportrouteID: json['transportroute_ID'],
      colourID: json['colour_ID'],
      colourDETAIL: "Colour.fromJson(jsonDecode(json['colour_DETAIL']))",
      transportrouteCODE: json['transportroute_CODE'],
      transportrouteTYPE: json['transportroute_TYPE'],
      transportrouteDESC: json['transportroute_DESC'],
      isactive: json['isactive'],
    );
  }
}
