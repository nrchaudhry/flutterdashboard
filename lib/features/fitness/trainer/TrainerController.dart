import 'TrainerService.dart';
import 'trainer.dart';

class TrainerController {
  static Future<List<Trainer>> trainerGet() async {
    return await TrainerService.get();
  }

  static Future<Trainer> trainerGetOne(id) async {
    return await TrainerService.getOne(id);
  }
}
