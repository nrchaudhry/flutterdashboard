import 'ProductItemApplication.dart';
import 'ProductItemApplicationService.dart';

class ProductitemapplicationController {
  static Future<List<Productitemapplication>>
      ProductitemapplicationGet() async {
    return await ProductitemapplicationService.get();
  }

  static Future<Productitemapplication> ProductitemapplicationGetOne(id) async {
    return await ProductitemapplicationService.getOne(id);
  }
}
