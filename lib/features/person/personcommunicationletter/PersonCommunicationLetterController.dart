import 'PersonCommunicatonLetterService.dart';
import 'Personcommunicationletter.dart';

class PersoncommunicationletterController {
  static Future<List<Personcommunicationletter>>
      personcommunicationletterGet() async {
    return await PersoncommunicationletterService.get();
  }

  static Future<Personcommunicationletter> personcommunicationletterGetOne(
      id) async {
    return await PersoncommunicationletterService.getOne(id);
  }
}
