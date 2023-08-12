
//import '../author/Author.dart';

class Departmentroom {
  final int departmentroomID;
  final int roomID;
  final int departmentID;
  final String isactive;

  const Departmentroom({
    required this.departmentroomID,
    required this.roomID,
    required this.departmentID,
    required this.isactive,
  });

  factory Departmentroom.fromJson(Map<String, dynamic> json) {
    return Departmentroom(
      departmentroomID: json['departmentroom_ID'],
      roomID: json['room_ID'],
      departmentID: json['department_ID'],
      isactive: json['isactive'],
    );
  }
}
