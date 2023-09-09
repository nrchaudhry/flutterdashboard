

import 'Productitempricelevel.dart';
import 'ProductitempricelevelService.dart';

class ProductitempricelevelController {
  static Future<List<Productitempricelevel>> ProductitempricelevelGet() async {
    return await ProductitempricelevelService.get();
  }

  static Future<Productitempricelevel> ProductitempricelevelGetOne(id) async {
    return await ProductitempricelevelService.getOne(id);
  }
}
