import 'TrainerTimeslot.dart';
import 'TrainerTimeslotService.dart';

class TrainertimeslotController {
  static Future<List<Trainertimeslot>> trainertimeslotGet() async {
    return await TrainertimeslotService.get();
  }

  static Future<Trainertimeslot> trainertimeslotGetOne(id) async {
    return await TrainertimeslotService.getOne(id);
  }
}
