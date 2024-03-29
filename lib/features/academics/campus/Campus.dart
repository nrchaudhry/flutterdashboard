import 'dart:convert';

import '../../location/location/Location.dart';

class Campus {
  final int campusID;
  final int universityID;
  final String universityDETAIL;
  final dynamic campusCODE;
  final dynamic campusNAME;
  final String campusDESCRIPTION;
  final dynamic addressLINE1;
  final dynamic addressLINE2;
  final String addressLINE3;
  final String addressLINE4;
  final String addressLINE5;
  final String addressPOSTCODE;
  final int locationID;
  final Location locationDETAIL;
  final String telephone;
  final String faxno;
  final String email;
  final String isactive;

  const Campus({
    required this.campusID,
    required this.universityID,
    required this.universityDETAIL,
    required this.campusCODE,
    required this.campusNAME,
    required this.campusDESCRIPTION,
    required this.addressLINE1,
    required this.addressLINE2,
    required this.addressLINE3,
    required this.addressLINE4,
    required this.addressLINE5,
    required this.addressPOSTCODE,
    required this.locationID,
    required this.locationDETAIL,
    required this.telephone,
    required this.faxno,
    required this.email,
    required this.isactive,
  });

  factory Campus.fromJson(Map<String, dynamic> json) {
    return Campus(
      campusID: json['campus_ID'],
      universityID: json['university_ID'],
      universityDETAIL: "University.fromJson(jsonDecode(json['university_DETAIL']))",
      campusCODE: json['campus_CODE'],
      campusNAME: json['campus_NAME'],
      campusDESCRIPTION: json['campus_DESCRIPTION'],
      addressLINE1: json['address_LINE1'],
      addressLINE2: json['address_LINE2'],
      addressLINE3: json['address_LINE3'],
      addressLINE4: json['address_LINE4'],
      addressLINE5: json['address_LINE5'],
      addressPOSTCODE: json['address_POSTCODE'],
      locationID: json['location_ID'],
      locationDETAIL: Location.fromJson(jsonDecode(json['location_DETAIL'])),
      telephone: json['telephone'],
      faxno: json['faxno'],
      email: json['email'],
      isactive: json['isactive'],
    );
  }
}
