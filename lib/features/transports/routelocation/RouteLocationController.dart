import 'RouteLocationService.dart';
import 'Routelocation.dart';

class RoutelocationController {
  static Future<List<Routelocation>> RoutelocationGet() async {
    return await RoutelocationService.get();
  }

  static Future<Routelocation> RoutelocationGetOne(id) async {
    return await RoutelocationService.getOne(id);
  }
}
