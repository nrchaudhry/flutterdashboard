import 'MealPlan.dart';
import 'MealPlanService.dart';

class MealplanController {
  static Future<List<Mealplan>> mealplanGet() async {
    return await MealplanService.get();
  }

  static Future<Mealplan> mealplanGetOne(id) async {
    return await MealplanService.getOne(id);
  }
}
