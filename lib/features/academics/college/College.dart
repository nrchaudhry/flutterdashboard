 import 'dart:convert';

import '../university/University.dart';

class College {
  final int collegeID;
  final int universityID;
  final University universityDETAIL;
  final int collegetypeID;
  final String collegeCODE;
  final String collegeNAME;
  final String collegeDESCRIPTION;
  final String addressLINE1;
  final String addressLINE2;
  final String addressLINE3;
  final String addressLINE4;
  final String addressLINE5;
  final String addressPOSTCODE;
  final String locationID;
  final int telephone;
  final String faxno;
  final int email;
  final String isactive;

  const College({
    required this.collegeID,
    required this.universityID,
    required this.universityDETAIL,
    required this.collegetypeID,
    required this.collegeCODE,
    required this.collegeNAME,
    required this.collegeDESCRIPTION,
    required this.addressLINE1,
    required this.addressLINE2,
    required this.addressLINE3,
    required this.addressLINE4,
    required this.addressLINE5,
    required this.addressPOSTCODE,
    required this.locationID,
    required this.telephone,
    required this.faxno,
    required this.email,
    required this.isactive,
  });

  factory College.fromJson(Map<String, dynamic> json) {
    return College(
      collegeID: json['college_ID'],
      universityID: json['university_ID'],
      universityDETAIL: University.fromJson(jsonDecode(json['university_DETAIL'])), 
      collegetypeID: json['collegetype_ID'],
      collegeCODE: json['college_CODE'],
      collegeNAME: json['college_NAME'],
      collegeDESCRIPTION: json['college_DESCRIPTION'],
      addressLINE1: json['address_LINE1'],
      addressLINE2: json['address_LINE2'],
      addressLINE3: json['address_LINE3'],
      addressLINE4: json['address_LINE4'],
      addressLINE5: json['address_LINE5'],
      addressPOSTCODE: json['address_POSTCODE'],
      locationID: json['location_ID'],
      telephone: json['telephone'],
      faxno: json['faxno'],
      email: json['email'],
      isactive: json['isactive'],
    );
  }
}
