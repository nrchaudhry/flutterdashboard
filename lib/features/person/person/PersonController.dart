import 'Person.dart';
import 'PersonService.dart';

class PersonController {
  static Future<List<Person>> personGet() async {
    return await PersonService.get();
  }

  static Future<Person> personGetOne(id) async {
    return await PersonService.getOne(id);
  }
}
