import 'Room.dart';
import 'RoomService.dart';

class RoomController {
  static Future<List<Room>> roomGet() async {
    return await RoomService.get();
  }

  static Future<Room> roomGetOne(id) async {
    return await RoomService.getOne(id);
  }
}
