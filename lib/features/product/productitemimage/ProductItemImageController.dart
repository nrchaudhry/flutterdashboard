import 'ProductItemImageService.dart';
import 'Productitemimage.dart';

class ProductitemimageController {
  static Future<List<Productitemimage>> ProductitemimageGet() async {
    return await ProductitemimageService.get();
  }

  static Future<Productitemimage> ProductitemimageGetOne(id) async {
    return await ProductitemimageService.getOne(id);
  }
}
