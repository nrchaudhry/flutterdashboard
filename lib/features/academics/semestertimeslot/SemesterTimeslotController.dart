

import 'SemesterTimeslotService.dart';
import 'Semestertimeslot.dart';

class SemestertimeslotController {
  static Future<List<Semestertimeslot>> semestertimeslotGet() async {
    return await SemestertimeslotService.get();
  }

  static Future<Semestertimeslot> semestertimeslotGetOne(id) async {
    return await SemestertimeslotService.getOne(id);
  }
}
