
import 'Personeducationqualification.dart';
import 'PersoneducationqualificationService.dart';

class PersoneducationqualificationController {
  static Future<List<Personeducationqualification>> personeducationqualificationGet() async {
    return await PersoneducationqualificationService.get();
  }

  static Future<Personeducationqualification> personeducationqualificationGetOne(id) async {
    return await PersoneducationqualificationService.getOne(id);
  }
}
