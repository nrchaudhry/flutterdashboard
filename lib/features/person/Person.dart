class Person {
	final int personID;
	final String title;
	final String forenames;
	final String surname;
	final String previoussurname;
	final String middlename;
	final String nickname;
	final String birthDATE;
	final String birthTIME;
	final int birthplaceID;
	final String birthplaceDETAIL;
	final String personimgPATH;
	final String isactive;

  const Person({
    required this.personID,
    required this.title,
    required this.forenames,
    required this.surname,
    required this.previoussurname,
    required this.middlename,
    required this.nickname,
    required this.birthDATE,
    required this.birthTIME,
    required this.birthplaceID,
    required this.birthplaceDETAIL,
    required this.personimgPATH,
    required this.isactive,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      personID: json['person_ID'],
      title: json['title'],
      forenames: json['forenames'],
      surname: json['surname'],
      previoussurname: json['previoussurname'],
      middlename: json['middlename'],
      nickname: json['nickname'],
      birthDATE: json['birth_DATE'],
      birthTIME: json['birth_TIME'],
      birthplaceID: json['birthplace_ID'],
      birthplaceDETAIL: json['birthplace_DETAIL'],
      personimgPATH: json['personimg_PATH'],
      isactive: json['isactive'],
    );
  }
}