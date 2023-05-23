import 'dart:convert'; 

import '../author/Author.dart';

class News {
  final int newsID;
  final int authorID;
  final Author authorDETAIL;
  final int newscategoryID;
  final String newscategoryDETAIL;
  final String newsDATETIME;
  final String newsTITLE;
  final String newsCONTENT;
  final String mediacontentPATH;
  final int newsstatusID;
  final String newsstatusDETAIL;
  final int newscommentstatusID;
  final String newscommentstatusDETAIL;
  final String isactive;

  const News({
    required this.newsID,
    required this.authorID,
    required this.authorDETAIL,
    required this.newscategoryID,
    required this.newscategoryDETAIL,
    required this.newsDATETIME,
    required this.newsTITLE,
    required this.newsCONTENT,
    required this.mediacontentPATH,
    required this.newsstatusID,
    required this.newsstatusDETAIL,
    required this.newscommentstatusID,
    required this.newscommentstatusDETAIL,
    required this.isactive,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      newsID: json['news_ID'],
      authorID: json['author_ID'],
      authorDETAIL: Author.fromJson(jsonDecode(json['author_DETAIL'])),
      newscategoryID: json['newscategory_ID'],
      newscategoryDETAIL: json['newscategory_DETAIL'],
      newsDATETIME: json['news_DATETIME'],
      newsTITLE: json['news_TITLE'],
      newsCONTENT: json['news_CONTENT'],
      mediacontentPATH: json['mediacontent_PATH'],
      newsstatusID: json['newsstatus_ID'],
      newsstatusDETAIL: json['newsstatus_DETAIL'],
      newscommentstatusID: json['newscommentstatus_ID'],
      newscommentstatusDETAIL: json['newscommentstatus_DETAIL'],
      isactive: json['isactive'],
    );
  }
}
