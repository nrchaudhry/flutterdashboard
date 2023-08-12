

import 'AcademicsCalendar.dart';
import 'AcademicsCalendarService.dart';

class AcademicscalendarController {
  static Future<List<Academicscalendar>> academicscalendarGet() async {
    return await AcademicscalendarService.get();
  }

  static Future<Academicscalendar> academicscalendarGetOne(id) async {
    return await AcademicscalendarService.getOne(id);
  }
}
