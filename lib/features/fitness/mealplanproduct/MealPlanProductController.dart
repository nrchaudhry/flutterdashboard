import 'MealPlanProductService.dart';
import 'mealplanproduct.dart';

class MealplanproductController {
  static Future<List<Mealplanproduct>> mealplanproductGet() async {
    return await MealplanproductService.get();
  }

  static Future<Mealplanproduct> mealplanproductGetOne(id) async {
    return await MealplanproductService.getOne(id);
  }
}
