import 'TransportRouteTruckService.dart';
import 'Transportroutetruck.dart';

class TransportroutetruckController {
  static Future<List<Transportroutetruck>> TransportroutetruckGet() async {
    return await TransportroutetruckService.get();
  }

  static Future<Transportroutetruck> TransportroutetruckGetOne(id) async {
    return await TransportroutetruckService.getOne(id);
  }
}
