import 'Shift.dart';
import 'ShiftService.dart';

class ShiftController {
  static Future<List<Shift>> shiftGet() async {
    return await ShiftService.get();
  }

  static Future<Shift> shiftGetOne(id) async {
    return await ShiftService.getOne(id);
  }
}
