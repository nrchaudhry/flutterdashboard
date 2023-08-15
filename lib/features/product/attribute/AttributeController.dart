import 'Attribute.dart';
import 'AttributeService.dart';

class AttributeController {
  static Future<List<Attribute>> attributeGet() async {
    return await AttributeService.get();
  }

  static Future<Attribute> attributeGetOne(id) async {
    return await AttributeService.getOne(id);
  }
}
