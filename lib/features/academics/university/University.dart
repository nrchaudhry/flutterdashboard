 

//import '../author/Author.dart';

class University {
  final int universityID;
  final int authorID;
//  final Author authorDETAIL;
  final int universitycategoryID;
  final String universitycategoryDETAIL;
  final String universityDATETIME;
  final String universityTITLE;
  final String universityCONTENT;
  final String mediacontentPATH;
  final int universitystatusID;
  final String universitystatusDETAIL;
  final int universitycommentstatusID;
  final String universitycommentstatusDETAIL;
  final String isactive;

  const University({
    required this.universityID,
    required this.authorID,
//    required this.authorDETAIL,
    required this.universitycategoryID,
    required this.universitycategoryDETAIL,
    required this.universityDATETIME,
    required this.universityTITLE,
    required this.universityCONTENT,
    required this.mediacontentPATH,
    required this.universitystatusID,
    required this.universitystatusDETAIL,
    required this.universitycommentstatusID,
    required this.universitycommentstatusDETAIL,
    required this.isactive,
  });

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      universityID: json['university_ID'],
      authorID: json['author_ID'],
//      authorDETAIL: Author.fromJson(jsonDecode(json['author_DETAIL'])),
      universitycategoryID: json['universitycategory_ID'],
      universitycategoryDETAIL: json['universitycategory_DETAIL'],
      universityDATETIME: json['university_DATETIME'],
      universityTITLE: json['university_TITLE'],
      universityCONTENT: json['university_CONTENT'],
      mediacontentPATH: json['mediacontent_PATH'],
      universitystatusID: json['universitystatus_ID'],
      universitystatusDETAIL: json['universitystatus_DETAIL'],
      universitycommentstatusID: json['universitycommentstatus_ID'],
      universitycommentstatusDETAIL: json['universitycommentstatus_DETAIL'],
      isactive: json['isactive'],
    );
  }
}
