 

//import '../author/Author.dart';

class Institute {
  final int instituteID;
  final String instituteCODE;
  final String instituteNAME;
  final String instituteDESCRIPTION;
  final String addressLINE1;
  final String addressLINE2;
  final String addressLINE3;
  final String addressLINE4;
  final String addressLINE5;
  final String addressPOSTCODE;
  final int locationID;
  final String telephone;
  final String faxno;
  final String email;
  final String logoPATH;
  final String iconPATH;
  final String isactive;

  const Institute({
    required this.instituteID,
    required this.instituteCODE,
    required this.instituteNAME,
    required this.instituteDESCRIPTION,
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
    required this.logoPATH,
    required this.iconPATH,
    required this.isactive,
  });

  factory Institute.fromJson(Map<String, dynamic> json) {
    return Institute(
      instituteID: json['institute_ID'],
      instituteCODE: json['institute_CODE'],
      instituteNAME: json['institute_NAME'],
      instituteDESCRIPTION: json['institute_DESCRIPTION'],
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
      logoPATH: json['logo_PATH'],
      iconPATH: json['icon_PATH'],
      isactive: json['isactive'],
    );
  }
}
