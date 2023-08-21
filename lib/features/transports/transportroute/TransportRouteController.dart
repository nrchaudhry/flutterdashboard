import 'TransportRoute.dart';
import 'TransportrouteService.dart';

class TransportrouteController {
  static Future<List<Transportroute>> TransportrouteGet() async {
    return await TransportrouteService.get();
  }

  static Future<Transportroute> TransportrouteGetOne(id) async {
    return await TransportrouteService.getOne(id);
  }
}
