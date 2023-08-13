import 'LocationLevelTypeService.dart';
import 'Locationleveltype.dart';

class LocationleveltypeController {
  static Future<List<Locationleveltype>> locationleveltypeGet() async {
    return await LocationleveltypeService.get();
  }

  static Future<Locationleveltype> locationleveltypeGetOne(id) async {
    return await LocationleveltypeService.getOne(id);
  }
}