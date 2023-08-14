import 'dart:convert';

import '../personcontact/PersonContact.dart';

class Personcommunicationemail {
  final int personemailID;
  final String emailDATETIME;
  final String emailCONTENT;
  final int personcontactID;
  final Personcontact personcontactDETAIL;

  final String isactive;

  const Personcommunicationemail({
    required this.personemailID,
    required this.emailDATETIME,
    required this.emailCONTENT,
    required this.personcontactID,
    required this.personcontactDETAIL,
    required this.isactive,
  });

  factory Personcommunicationemail.fromJson(Map<String, dynamic> json) {
    return Personcommunicationemail(
      personemailID: json['personemail_ID'],
      emailDATETIME: json['email_DATETIME'],
      emailCONTENT: json['email_CONTENT'],
      personcontactID: json['personcontact_ID'],
      personcontactDETAIL: Personcontact.fromJson(jsonDecode(json['personcontact_DETAIL'])),
      isactive: json['isactive'],
    );
  }
}
