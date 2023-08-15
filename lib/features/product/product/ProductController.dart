import 'Product.dart';
import 'ProductService.dart';

class ProductController {
  static Future<List<Product>> campusGet() async {
    return await ProductService.get();
  }

  static Future<Product> campusGetOne(id) async {
    return await ProductService.getOne(id);
  }
}
