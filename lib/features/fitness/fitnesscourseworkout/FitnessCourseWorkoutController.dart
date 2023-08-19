import 'FitnessCourseWorkoutService.dart';
import 'Fitnesscourseworkout.dart';

class FitnesscourseworkoutController {
  static Future<List<Fitnesscourseworkout>> fitnesscourseworkoutGet() async {
    return await FitnesscourseworkoutService.get();
  }

  static Future<Fitnesscourseworkout> fitnesscourseworkoutGetOne(id) async {
    return await FitnesscourseworkoutService.getOne(id);
  }
}
