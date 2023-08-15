import 'Personcontactaddress.dart';
import 'PersoncontactaddressService.dart';

class PersoncontactaddressController {
  static Future<List<Personcontactaddress>> personcontactaddressGet() async {
    return await PersoncontactaddressService.get();
  }

  static Future<Personcontactaddress> personcontactaddressGetOne(id) async {
    return await PersoncontactaddressService.getOne(id);
  }
}
