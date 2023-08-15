import 'dart:convert'; 

import '../person/Person.dart';

class Referenceperson {
  final int referencepersonID;
  final int personID;
  final Person personDETAIL;

  const Referenceperson({
    required this.referencepersonID,
    required this.personID,
    required this.personDETAIL,
  });

  factory Referenceperson.fromJson(Map<String, dynamic> json) {
    return Referenceperson(
      referencepersonID: json['referenceperson_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
    );
  }
}
