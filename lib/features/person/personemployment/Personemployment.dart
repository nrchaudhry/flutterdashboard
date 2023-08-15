import 'dart:convert';

import '../person/Person.dart';

class Personemployment {
  final int personemploymentID;
  final int personID;
  final Person personDETAIL;
  final String employerNAME;
  final String jobDESCRIPTION;
  final String startdate;
  final String addressLINE1;
  final String addressLINE2;
  final String addressLINE3;
  final String addressLINE4;
  final String addressLINE5;
  final String enddate;
  final String addressPOSTCODE;
  final String contactNUMBER;
  final String officeEMAIL;
  final int website;
  // final int locationID;
  // final Location locationDETAIL;
  //  final int workfieldID;
  // final Workfield workfieldDETAIL;
  //  final int careerlevelID;
  // final Careerlevel careerlevelDETAIL;
  //  final int worktypeID;
  // final Worktype worktypeDETAIL;
  //  final int organizationtypeID;
  // final Organizationtype organizationtypeDETAIL;
  //  final int organizationsectorID;
  // final Organizationsector organizationsectorDETAIL;
  //  final int organizationcategoryID;
  // final Organizationcategory organizationcategoryDETAIL;
  final String isactive;

  const Personemployment({
    required this.personemploymentID,
    required this.personID,
    required this.personDETAIL,
    required this.employerNAME,
    required this.jobDESCRIPTION,
    required this.startdate,
    required this.addressLINE1,
    required this.addressLINE2,
    required this.addressLINE3,
    required this.addressLINE4,
    required this.addressLINE5,
    required this.enddate,
    required this.addressPOSTCODE,
    required this.contactNUMBER,
    required this.officeEMAIL,
    required this.website,
    // required this.locationID,
    // required this.locationDETAIL,
    // required this.workfieldID,
    // required this.workfieldDETAIL,
    // required this.careerlevelID,
    // required this.careerlevelDETAIL,
    // required this.worktypeID,
    // required this.worktypeDETAIL,
    // required this.organizationtypeID,
    // required this.organizationtypeDETAIL,
    // required this.organizationsectorID,
    // required this.organizationsectorDETAIL,
    // required this.organizationcategoryID,
    // required this.organizationcategoryDETAIL,
     required this.isactive,
  });

  factory Personemployment.fromJson(Map<String, dynamic> json) {
    return Personemployment(
      personemploymentID: json['personemployment_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      // locationID: json['location_ID'],
      // locationDETAIL: Location.fromJson(jsonDecode(json['location_DETAIL'])),
      //       workfieldID: json['workfield_ID'],
      // workfieldDETAIL: Workfield.fromJson(jsonDecode(json['workfield_DETAIL'])),
      //       careerlevelID: json['careerlevel_ID'],
      // careerlevelDETAIL: Careerlevel.fromJson(jsonDecode(json['careerlevel_DETAIL'])),
      //       worktypeID: json['worktype_ID'],
      // worktypeDETAIL: Worktype.fromJson(jsonDecode(json['worktype_DETAIL'])),
      //       organizationtypeID: json['organizationtype_ID'],
      // organizationtypeDETAIL: Organizationtype.fromJson(jsonDecode(json['organizationtype_DETAIL'])),
      //       organizationsectorID: json['organizationsector_ID'],
      // organizationsectorDETAIL: Organizationsector.fromJson(jsonDecode(json['organizationsector_DETAIL'])),
      //  organizationcategoryID: json['organizationcategory_ID'],
      // organizationcategoryDETAIL: Organizationcategory.fromJson(jsonDecode(json['organizationcategory_DETAIL'])),
      employerNAME: json['employer_NAME'],
      startdate: json['startdate'],
      jobDESCRIPTION: json['job_DESCRIPTION'],
      addressLINE1: json['address_LINE1'],
      addressLINE2: json['address_LINE2'],
      addressLINE3: json['address_LINE3'],
      addressLINE4: json['address_LINE4'],
      addressLINE5: json['address_LINE5'],
      enddate: json['enddate'],
      addressPOSTCODE: json['address_POSTCODE'],
      contactNUMBER: json['contact_NUMBER'],
      officeEMAIL: json['office_EMAIL'],
      website: json['website'],
      isactive: json['isactive'],
    );
  }
}
