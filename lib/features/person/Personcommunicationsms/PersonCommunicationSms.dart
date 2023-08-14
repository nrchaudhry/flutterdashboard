import 'dart:convert';

import '../personcontact/PersonContact.dart';

class Personcommunicationsms {
  final int personsmsID;
  final String smsDATETIME;
  final String smsCONTENT;
  final int personcontactID;
  final Personcontact personcontactDETAIL;
  final String isactive;

  const Personcommunicationsms({
    required this.personsmsID,
    required this.smsDATETIME,
    required this.smsCONTENT,
    required this.personcontactID,
    required this.personcontactDETAIL,
    required this.isactive,
  });

  factory Personcommunicationsms.fromJson(Map<String, dynamic> json) {
    return Personcommunicationsms(
      personsmsID: json['personsms_ID'],
      smsDATETIME: json['sms_DATETIME'],
      smsCONTENT: json['sms_CONTENT'],
      personcontactID: json['personcontact_ID'],
      personcontactDETAIL: Personcontact.fromJson(jsonDecode(json['personcontact_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
