import 'dart:convert';

import '../fitnesscourse/Fitnesscourse.dart';
import '../workout/Workout.dart';

class Fitnesscourseworkout {
  final int fitnesscourseworkoutID;
  final int fitnesscourseID;
  final Fitnesscourse fitnesscourseDETAIL;
  final int workoutID;
  final Workout workoutDETAIL;
  final String workoutDURATION;
  final String isactive;

  const Fitnesscourseworkout({
    required this.fitnesscourseworkoutID,
    required this.fitnesscourseID,
    required this.fitnesscourseDETAIL,
    required this.workoutID,
    required this.workoutDETAIL,
    required this.workoutDURATION,
    required this.isactive,
  });

  factory Fitnesscourseworkout.fromJson(Map<String, dynamic> json) {
    return Fitnesscourseworkout(
      fitnesscourseworkoutID: json['fitnesscourseworkout_ID'],
      fitnesscourseID: json['fitnesscourse_ID'],
      fitnesscourseDETAIL: Fitnesscourse.fromJson(jsonDecode(json['fitnesscourse_DETAIL'])),
      workoutID: json['workout_ID'],
      workoutDETAIL: Workout.fromJson(jsonDecode(json['workout_DETAIL'])),
      workoutDURATION: json['workout_DURATION'],
      isactive: json['isactive'],
    );
  }
}
