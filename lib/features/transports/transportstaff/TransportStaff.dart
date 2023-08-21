


class Transportstaff {
  final int transportstaffID;
  // final int stafftypeID;
  // final Stafftype stafftypeDETAIL;
  final String title;
  final String surname;
  final String forenames;
  final String busHelper;
  final String driveringPATH;
  final String isactive;

  const Transportstaff({
    required this.transportstaffID,
    // required this.stafftypeID,
    // required this.stafftypeDETAIL,
    required this.title,
    required this.surname,
    required this.forenames,
    required this.busHelper,
    required this.driveringPATH,
    required this.isactive,
  });

  factory Transportstaff.fromJson(Map<String, dynamic> json) {
    return Transportstaff(
      transportstaffID: json['transportstaff_ID'],
      // stafftypeID: json['stafftype_ID'],
      // stafftypeDETAIL: Stafftype.fromJson(jsonDecode(json['stafftype_DETAIL'])),
      title: json['title'],
      surname: json['surname'],
      forenames: json['forenames'],
      busHelper: json['busHelper'],
      driveringPATH: json['drivering_PATH'],
      isactive: json['isactive'],
    );
  }
}
