import 'Workout.dart';
import 'WorkoutService.dart';

class WorkoutController {
  static Future<List<Workout>> workoutGet() async {
    return await WorkoutService.get();
  }

  static Future<Workout> workoutGetOne(id) async {
    return await WorkoutService.getOne(id);
  }
}
