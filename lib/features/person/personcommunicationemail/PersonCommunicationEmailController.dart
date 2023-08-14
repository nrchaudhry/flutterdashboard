import 'Personcommunicationemail.dart';
import 'PersoncommunicationemailService.dart';

class PersoncommunicationemailController {
  static Future<List<Personcommunicationemail>>
      personcommunicationemailGet() async {
    return await PersoncommunicationemailService.get();
  }

  static Future<Personcommunicationemail> personcommunicationemailGetOne(
      id) async {
    return await PersoncommunicationemailService.getOne(id);
  }
}
