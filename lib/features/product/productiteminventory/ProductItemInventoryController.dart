import 'Productiteminventory.dart';
import 'ProductiteminventoryService.dart';

class ProductiteminventoryController {
  static Future<List<Productiteminventory>> ProductiteminventoryGet() async {
    return await ProductiteminventoryService.get();
  }

  static Future<Productiteminventory> ProductiteminventoryGetOne(id) async {
    return await ProductiteminventoryService.getOne(id);
  }
}
