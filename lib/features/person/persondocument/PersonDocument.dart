import 'dart:convert';

import '../person/Person.dart';

class Persondocument {
  final int persondocumentID;
  final int personID;
  final Person personDETAIL;
  final String documentPATH;
  final int filetypeID;
  final int documenttypeID;
  final String documenttypeDESC;
  final String isVERIFIED;
  final String isARCHIVED;
  final String isactive;

  const Persondocument({
    required this.persondocumentID,
    required this.personID,
    required this.personDETAIL,
    required this.documentPATH,
    required this.filetypeID,
    required this.documenttypeID,
    required this.documenttypeDESC,
    required this.isVERIFIED,
    required this.isARCHIVED,
    required this.isactive,
  });

  factory Persondocument.fromJson(Map<String, dynamic> json) {
    return Persondocument(
      persondocumentID: json['persondocument_ID'],
      personID: json['person_ID'],
      personDETAIL: Person.fromJson(jsonDecode(json['person_DETAIL'])),
      documentPATH: json['document_PATH'],
      filetypeID: json['filetype_ID'],
      documenttypeDESC: json['documenttype_DESC'],
      documenttypeID: json['documenttype_ID'],
      isVERIFIED: json['is_VERIFIED'],
      isARCHIVED: json['is_ARCHIVED'],
      isactive: json['isactive'],
    );
  }
}
