 class Location {
  final int locationID;
  final String locationNAME;
  final String locationCODE;
  final String locationDESC;
  final int locationleveltypeID;
  final int locationparentID;
  final String latitude;
  final String longitude;
  final String altitude;
  final String isactive;

  const Location({
    required this.locationID,
    required this.locationNAME,
    required this.locationCODE,
    required this.locationDESC,
    required this.locationleveltypeID,
    required this.locationparentID,
    required this.latitude,
    required this.longitude,
    required this.altitude,
    required this.isactive,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      locationID: json['location_ID'],
      locationNAME: json['location_NAME'],
      locationCODE: json['location_CODE'],
      locationDESC: json['location_DESC'],
      locationleveltypeID: json['locationleveltype_ID'],
      locationparentID: json['locationparent_ID'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      altitude: json['altitude'],
      isactive: json['isactive'],
    );
  }
}