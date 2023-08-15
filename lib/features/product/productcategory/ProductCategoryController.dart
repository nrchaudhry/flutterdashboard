import 'ProductCategory.dart';
import 'ProductCategoryService.dart';

class ProductcategoryController {
  static Future<List<Productcategory>> productcategoryGet() async {
    return await ProductcategoryService.get();
  }

  static Future<Productcategory> productcategoryGetOne(id) async {
    return await ProductcategoryService.getOne(id);
  }
}
