

import 'Productitempricechange.dart';
import 'ProductitempricechangeService.dart';

class CampusController {
  static Future<List<Productitempricechange>> ProductitempricechangeGet() async {
    return await ProductitempricechangeService.get();
  }

  static Future<Productitempricechange>ProductitempricechangeGetOne(id) async {
    return await ProductitempricechangeService.getOne(id);
  }
}
