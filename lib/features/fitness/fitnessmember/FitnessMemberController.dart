import 'FitnessMember.dart';
import 'FitnessMemberService.dart';

class FitnessmemberController {
  static Future<List<Fitnessmember>> fitnessmemberGet() async {
    return await FitnessmemberService.get();
  }

  static Future<Fitnessmember> fitnessmemberGetOne(id) async {
    return await FitnessmemberService.getOne(id);
  }
}
