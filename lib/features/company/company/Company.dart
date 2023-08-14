class Company {
  final int companyID;
  final String companyNAME;
  final String companyDESC;
  final String startDATE;
  final String endDATE;
  final String isactive;

  const Company({
    required this.companyID,
    required this.companyNAME,
    required this.companyDESC,
    required this.startDATE,
    required this.endDATE,
    required this.isactive,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      companyID: json['company_ID'],
      companyNAME: json['company_NAME'],
      companyDESC: json['company_DESC'],
      startDATE: json['start_DATE'],
      endDATE: json['end_DATE'],
      isactive: json['isactive'],
    );
  }
}
