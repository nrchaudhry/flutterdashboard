import 'TransportRouteStaffService.dart';
import 'Transportroutestaff.dart';

class TransportroutestaffController {
  static Future<List<Transportroutestaff>> TransportroutestaffGet() async {
    return await TransportroutestaffService.get();
  }

  static Future<Transportroutestaff> TransportroutestaffGetOne(id) async {
    return await TransportroutestaffService.getOne(id);
  }
}
