 class Shift {
  final int shiftID;
  final String shiftSTARTTIME;
  final String shiftENDTIME;
  final String isactive;

  const Shift({
    required this.shiftID,
    required this.shiftSTARTTIME,
    required this.shiftENDTIME,
    required this.isactive,
  });

  factory Shift.fromJson(Map<String, dynamic> json) {
    return Shift(
      shiftID: json['shift_ID'],
      shiftSTARTTIME: json['shift_STARTTIME'],
      shiftENDTIME: json['shift_ENDTIME'],
      isactive: json['isactive'],
    );
  }
}
