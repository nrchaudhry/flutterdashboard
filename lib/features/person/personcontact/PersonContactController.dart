import 'Personcontact.dart';
import 'PersoncontactService.dart';

class PersoncontactController {
  static Future<List<Personcontact>> personcontactGet() async {
    return await PersoncontactService.get();
  }

  static Future<Personcontact> personcontactGetOne(id) async {
    return await PersoncontactService.getOne(id);
  }
}
