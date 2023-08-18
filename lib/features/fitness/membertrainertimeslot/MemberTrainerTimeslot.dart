import 'dart:convert';

import '../fitnessmember/FitnessMember.dart';
import '../trainertimeslot/TrainerTimeslot.dart';

class Membertrainertimeslot {
  final int membertrainertimeslotID;
  final int fitnessmemberID;
  final Fitnessmember fitnessmemberDETAIL;
  final int trainertimeslotID;
  final Trainertimeslot trainertimeslotDETAIL;
  final String isactive;

  const Membertrainertimeslot({
    required this.membertrainertimeslotID,
    required this.fitnessmemberID,
    required this.fitnessmemberDETAIL,
    required this.trainertimeslotID,
    required this.trainertimeslotDETAIL,
    required this.isactive,
  });

  factory Membertrainertimeslot.fromJson(Map<String, dynamic> json) {
    return Membertrainertimeslot(
      membertrainertimeslotID: json['membertrainertimeslot_ID'],
      fitnessmemberID: json['fitnessmember_ID'],
      fitnessmemberDETAIL: Fitnessmember.fromJson(jsonDecode(json['fitnessmember_DETAIL'])),
      trainertimeslotID: json['trainertimeslot_ID'],
      trainertimeslotDETAIL: Trainertimeslot.fromJson(jsonDecode(json['trainertimeslot_DETAIL'])),
     isactive: json['isactive'],
    );
  }
}
