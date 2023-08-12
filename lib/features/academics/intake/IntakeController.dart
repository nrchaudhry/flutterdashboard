

import 'Intake.dart';
import 'IntakeService.dart';

class IntakeController {
  static Future<List<Intake>> intakeGet() async {
    return await IntakeService.get();
  }

  static Future<Intake> intakeGetOne(id) async {
    return await IntakeService.getOne(id);
  }
}
