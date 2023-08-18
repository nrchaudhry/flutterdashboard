class Workout {
  final int workoutID;
  final String workoutCODE;
  final String workoutNAME;
  final String workoutvideoURL;
  final String workoutDESCRIPTION;
  final String isactive;

  const Workout({
    required this.workoutID,
    required this.workoutCODE,
    required this.workoutNAME,
    required this.workoutvideoURL,
    required this.workoutDESCRIPTION,
    required this.isactive,
  });

  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      workoutID: json['workout_ID'],
      workoutCODE: json['workout_CODE'],
      workoutNAME: json['workout_NAME'],
      workoutvideoURL: json['workoutvideo_URL'],
      workoutDESCRIPTION: json['workout_DESCRIPTION'],
      isactive: json['isactive'],
    );
  }
}
