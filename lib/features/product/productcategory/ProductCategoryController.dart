import 'ProductCategory.dart';
import 'ProductCategoryService.dart';

class ProductCategoryController {
  static Future<List<ProductCategory>> productcategoryGet() async {
    return await ProductCategoryService.get();
  }

  static Future<ProductCategory> productcategoryGetOne(id) async {
    return await ProductCategoryService.getOne(id);
  }
}
