import 'Personemployment.dart';
import 'PersonemploymentService.dart';

class PersonemploymentController {
  static Future<List<Personemployment>> personemploymentGet() async {
    return await PersonemploymentService.get();
  }

  static Future<Personemployment> personemploymentGetOne(id) async {
    return await PersonemploymentService.getOne(id);
  }
}
