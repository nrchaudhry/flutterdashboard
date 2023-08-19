import 'MemberTrainerTimeslotService.dart';
import 'membertrainertimeslot.dart';

class MembertrainertimeslotController {
  static Future<List<Membertrainertimeslot>> membertrainertimeslotGet() async {
    return await MembertrainertimeslotService.get();
  }

  static Future<Membertrainertimeslot> membertrainertimeslotGetOne(id) async {
    return await MembertrainertimeslotService.getOne(id);
  }
}
