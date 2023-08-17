 import 'dart:convert';

import '../../location/location/Location.dart';

class University {
  final int universityID;
  final String universityCODE;
  final String universityNAME;
  final String universityDESCRIPTION;
  final String addressLINE1;
  final String addressLINE2;
  final String addressLINE3;
  final String addressLINE4;
  final String addressLINE5;
  final String addressPOSTCODE;
  final int locationID;
  final Location locationDETAIL;
  final String telephone;
  final String faxno;
  final String email;
  final String logoPATH;
  final String iconPATH;
  final String isactive;

  const University({
    required this.universityID,
    required this.universityCODE,
    required this.universityNAME,
    required this.universityDESCRIPTION,
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
    required this.logoPATH,
    required this.iconPATH,
    required this.isactive,
  });

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      universityID: json['university_ID'],
      universityCODE: json['university_CODE'],
      universityNAME: json['university_NAME'],
      universityDESCRIPTION: json['university_DESCRIPTION'],
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
      logoPATH: json['logo_PATH'],
      iconPATH: json['icon_PATH'],
      isactive: json['isactive'],
    );
  }
}
