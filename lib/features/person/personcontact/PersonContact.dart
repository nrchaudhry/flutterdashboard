class Personcontact {
  final int personcontactID;
  final int contacttypeID;
  final String contactVALUE;
  final String isverified;
  final String ispreaferd;
  final String isactive;

  const Personcontact({
    required this.personcontactID,
    required this.contacttypeID,
    required this.contactVALUE,
    required this.isverified,
    required this.ispreaferd,
    required this.isactive,
  });

  factory Personcontact.fromJson(Map<String, dynamic> json) {
    return Personcontact(
      personcontactID: json['personcontact_ID'],
      contacttypeID: json['contacttype_ID'],
      contactVALUE: json['contact_VALUE'],
      isverified: json['isverified'],
      ispreaferd: json['ispreaferd'],
      isactive: json['isactive'],
    );
  }
}
