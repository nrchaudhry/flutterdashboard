import 'dart:convert';

import '../person/Person.dart';

class Author {
	final int authorID;
	final int personID;
	final Person personDETAIL;
	final String authordisplayNAME;
	final String isactive;

  const Author({
    required this.authorID,
    required this.personID,
    required this.personDETAIL,
    required this.authordisplayNAME,
    required this.isactive,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      authorID: json['author_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      authordisplayNAME: json['authordisplay_NAME'],
      isactive: json['isactive'],
    );
  }
}