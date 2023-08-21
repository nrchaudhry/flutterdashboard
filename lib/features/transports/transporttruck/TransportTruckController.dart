import 'TransportTruckService.dart';
import 'Transporttruck.dart';

class TransporttruckController {
  static Future<List<Transporttruck>> TransporttruckGet() async {
    return await TransporttruckService.get();
  }

  static Future<Transporttruck> TransporttruckGetOne(id) async {
    return await TransporttruckService.getOne(id);
  }
}
