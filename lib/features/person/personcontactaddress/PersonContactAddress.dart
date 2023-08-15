import 'dart:convert';

import 'package:flutterdashboard/features/location/location/Location.dart';

import '../person/Person.dart';

class Personcontactaddress {
  final int personcontactaddressID;
  final int personID;
  final Person personDETAIL;
  final String addressLINE1;
  final String addressLINE2;
  final String addressLINE3;
  final String addressLINE4;
  final String addressLINE5;
  final String addressPOSTCODE;
  final String locationID;
  final Location locationDETAIL;
  final String ispermanent;
  final String isactive;

  const Personcontactaddress({
    required this.personcontactaddressID,
    required this.personID,
    required this.personDETAIL,
    required this.addressLINE1,
    required this.addressLINE2,
    required this.addressLINE3,
    required this.addressLINE4,
    required this.addressLINE5,
    required this.addressPOSTCODE,
    required this.locationID,
    required this.locationDETAIL,
    required this. ispermanent,
    required this.isactive,
  });

  factory Personcontactaddress.fromJson(Map<String, dynamic> json) {
    return Personcontactaddress(
      personcontactaddressID: json['personcontactaddress_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      addressLINE1: json['address_LINE1'],
      addressLINE2: json['address_LINE2'],
      addressLINE3: json['address_LINE3'],
      addressLINE4: json['address_LINE4'],
      addressLINE5: json['address_LINE5'],
      addressPOSTCODE: json['address_POSTCODE'],
      locationID: json['location_ID'],
      locationDETAIL: Location.fromJson(jsonDecode(json['locationDETAIL'])),
      ispermanent:json['ispermanent'],
      isactive: json['isactive'],
    );
  }
}
