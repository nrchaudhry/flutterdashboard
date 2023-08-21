import 'TransportStaffService.dart';
import 'Transportstaff.dart';

class TransportstaffController {
  static Future<List<Transportstaff>> TransportstaffGet() async {
    return await TransportstaffService.get();
  }

  static Future<Transportstaff> TransportstaffGetOne(id) async {
    return await TransportstaffService.getOne(id);
  }
}
