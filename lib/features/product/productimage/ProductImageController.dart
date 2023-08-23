import 'ProductImageService.dart';
import 'Productimage.dart';

class ProductimageController {
  static Future<List<Productimage>> productimageGet() async {
    return await ProductimageService.get();
  }

  static Future<Productimage> productimageGetOne(id) async {
    return await ProductimageService.getOne(id);
  }
}
