import 'dart:convert';

import '../trainer/trainer.dart';

class Trainertimeslot {
  final int trainertimeslotID;
  final int trainerID;
  final Trainer trainerDETAIL;
  final String trainertimeslotSTART;
  final String trainertimeslotEND;
  final String isactive;

  const Trainertimeslot({
    required this.trainertimeslotID,
    required this.trainerID,
    required this.trainerDETAIL,
    required this.trainertimeslotSTART,
    required this.trainertimeslotEND,
    required this.isactive,
  });

  factory Trainertimeslot.fromJson(Map<String, dynamic> json) {
    return Trainertimeslot(
      trainertimeslotID: json['trainertimeslot_ID'],
      trainerID: json['trainer_ID'],
      trainerDETAIL: Trainer.fromJson(jsonDecode(json['trainer_DETAIL'])),
      trainertimeslotSTART: json['trainertimeslot_START'],
      trainertimeslotEND: json['trainertimeslot_END'],
      isactive: json['isactive'],
    );
  }
}
