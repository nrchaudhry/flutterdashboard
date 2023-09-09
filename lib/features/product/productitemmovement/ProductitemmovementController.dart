

import 'Productitemmovement.dart';
import 'ProductitemmovementService.dart';

class ProductitemmovementController {
  static Future<List<Productitemmovement>> ProductitemmovementGet() async {
    return await ProductitemmovementService.get();
  }

  static Future<Productitemmovement> ProductitemmovementGetOne(id) async {
    return await ProductitemmovementService.getOne(id);
  }
}
