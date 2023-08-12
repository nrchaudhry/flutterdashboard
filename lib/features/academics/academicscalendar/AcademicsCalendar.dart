
//import '../academicsyear/Author.dart';

class Academicscalendar {
  final int academicscalendarID;
  final int academicsyearID;
  final String academicscalendarSTARTDATE;
  final String academicscalendarENDDATE;
  final String academicscalendarDESC;
  final String isactive;

  const Academicscalendar({
    required this.academicscalendarID,
    required this.academicsyearID,
    required this.academicscalendarSTARTDATE,
    required this.academicscalendarENDDATE,
    required this.academicscalendarDESC,
    required this.isactive,
  });

  factory Academicscalendar.fromJson(Map<String, dynamic> json) {
    return Academicscalendar(
      academicscalendarID: json['academicscalendar_ID'],
      academicsyearID: json['academicsyear_ID'],
      academicscalendarSTARTDATE: json['academicscalendar_STARTDATE'],
      academicscalendarENDDATE: json['academicscalendar_ENDDATE'],
      academicscalendarDESC: json['academicscalendar_DESC'],
     isactive: json['isactive'],
    );
  }
}
