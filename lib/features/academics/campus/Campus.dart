 

//import '../author/Author.dart';

class Campus {
  final int campusID;
  final int universityID;
  final int email;
  final String campusCODE;
  final String campusNAME;
  final String campusDESCRIPTION;
  final String addressLINE1;
  final String addressLINE2;
  final String addressLINE3;
  final String addressLINE4;
  final String addressLINE5;
  final String addressPOSTCODE;
  final String locationID;
  final String telephone;
  final String faxno;
  final String isactive;

  const Campus({
    required this.campusID,
    required this.universityID,
    required this.email,
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
    required this.telephone,
    required this.faxno,
    required this.isactive,
  });

  factory Campus.fromJson(Map<String, dynamic> json) {
    return Campus(
      campusID: json['campus_ID'],
      universityID: json['university_ID'],
      email: json['email'],
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
      telephone: json['telephone'],
      faxno: json['faxno'],
      isactive: json['isactive'],
    );
  }
}
