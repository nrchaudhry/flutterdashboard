import 'Personcommunicationsms.dart';
import 'PersoncommunicationsmsService.dart';

class PersoncommunicationsmsController {
  static Future<List<Personcommunicationsms>>
      personcommunicationsmsGet() async {
    return await PersoncommunicationsmsService.get();
  }

  static Future<Personcommunicationsms> personcommunicationsmsGetOne(id) async {
    return await PersoncommunicationsmsService.getOne(id);
  }
}
