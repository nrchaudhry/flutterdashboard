import 'Personeducationinstitute.dart';
import 'PersoneducationinstituteService.dart';

class PersoneducationinstituteController {
  static Future<List<Personeducationinstitute>> personeducationinstituteGet() async {
    return await PersoneducationinstituteService.get();
  }

  static Future<Personeducationinstitute> personeducationinstituteGetOne(id) async {
    return await PersoneducationinstituteService.getOne(id);
  }
}
