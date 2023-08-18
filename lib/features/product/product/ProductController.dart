import 'Product.dart';
import 'ProductService.dart';

class ProductController {
  static Future<List<Product>> productGet() async {
    return await ProductService.get();
  }

  static Future<Product> productGetOne(id) async {
    return await ProductService.getOne(id);
  }
}
