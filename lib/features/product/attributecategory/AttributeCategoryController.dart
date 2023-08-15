import 'AttributeCategory.dart';
import 'AttributeCategoryService.dart';

class AttributecategoryController {
  static Future<List<Attributecategory>> attributecategoryGet() async {
    return await AttributecategoryService.get();
  }

  static Future<Attributecategory> attributecategoryGetOne(id) async {
    return await AttributecategoryService.getOne(id);
  }
}
