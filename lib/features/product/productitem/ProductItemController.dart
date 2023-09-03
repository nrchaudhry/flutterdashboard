import 'ProductItem.dart';
import 'ProductItemService.dart';

class ProductItemController {
  static Future<List<ProductItem>> productitemGet() async {
    return await ProductitemService.get();
  }

  static Future<ProductItem> productitemGetOne(id) async {
    return await ProductitemService.getOne(id);
  }

  static Future<List<ProductItem>> productitemAdvancedSearch(search) async {
    return await ProductitemService.advancedSearch(search);
  }

}
