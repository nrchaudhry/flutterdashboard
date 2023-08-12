

import 'DepartmentRoomService.dart';
import 'Departmentroom.dart';

class DepartmentroomController {
  static Future<List<Departmentroom>> departmentroomGet() async {
    return await DepartmentroomService.get();
  }

  static Future<Departmentroom> departmentroomGetOne(id) async {
    return await DepartmentroomService.getOne(id);
  }
}
