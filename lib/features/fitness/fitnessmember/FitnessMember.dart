import 'dart:convert';

import '../../person/person/Person.dart';

class Fitnessmember {
  final int fitnessmemberID;
  final int personID;
  final Person personDETAIL;
  final String fitnessmemberBMI;
  final String joiningDATE;
  final String expiryDATE;
  final String isactive;

  const Fitnessmember({
    required this.fitnessmemberID,
    required this.personID,
    required this.personDETAIL,
    required this.fitnessmemberBMI,
    required this.joiningDATE,
    required this.expiryDATE,
    required this.isactive,
  });

  factory Fitnessmember.fromJson(Map<String, dynamic> json) {
    return Fitnessmember(
      fitnessmemberID: json['fitnessmember_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      fitnessmemberBMI: json['fitnessmember_BMI'],
      joiningDATE: json['joining_DATE'],
      expiryDATE: json['expiry_DATE'],
      isactive: json['isactive'],
    );
  }
}
