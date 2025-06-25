import 'ProductItem.dart';
import 'ProductItemService.dart';

class ProductItemController {
  static Future<List<ProductItem>> productitemGet() async {
    return await ProductItemService.get();
  }

  static Future<ProductItem> productitemGetOne(id) async {
    return await ProductItemService.getOne(id);
  }

  static Future<List<ProductItem>> productitemAdvancedSearch(search) async {
    return await ProductItemService.advancedSearch(search);
  }
}
