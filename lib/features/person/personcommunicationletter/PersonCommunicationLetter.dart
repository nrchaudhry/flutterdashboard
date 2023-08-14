import 'dart:convert';

import '../person/Person.dart';


class Personcommunicationletter {
  final int personletterID;
  final String letterDATE;
  final String letterCONTENT;
  final String letterREFNO;
  final int letterID;
  final int personID;
  final Person personDETAIL;
  final String isactive;

  const Personcommunicationletter({
    required this.personletterID,
    required this.letterDATE,
    required this.letterCONTENT,
    required this.letterREFNO,
    required this.letterID,
    required this.personID,
    required this.personDETAIL,
    required this.isactive,
  });

  factory Personcommunicationletter.fromJson(Map<String, dynamic> json) {
    return Personcommunicationletter(
      personletterID: json['personletter_ID'],
      letterDATE: json['letter_DATE'],
      letterCONTENT: json['letter_CONTENT'],
      letterREFNO: json['letter_REFNO'],
      letterID: json['letter_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
