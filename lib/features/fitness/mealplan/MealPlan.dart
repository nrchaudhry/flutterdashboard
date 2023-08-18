class Mealplan {
  final int mealplanID;
  final String mealplanCODE;
  final String mealplanNAME;
  final String mealplanCALORIES;
  final String mealplanDESCRIPTION;
  final String isactive;

  const Mealplan({
    required this.mealplanID,
    required this.mealplanCODE,
    required this.mealplanNAME,
    required this.mealplanCALORIES,
    required this.mealplanDESCRIPTION,
    required this.isactive,
  });

  factory Mealplan.fromJson(Map<String, dynamic> json) {
    return Mealplan(
      mealplanID: json['mealplan_ID'],
      mealplanCODE: json['mealplan_CODE'],
      mealplanNAME: json['mealplan_NAME'],
      mealplanCALORIES: json['mealplan_CALORIES'],
      mealplanDESCRIPTION: json['mealplan_DESCRIPTION'],
      isactive: json['isactive'],
    );
  }
}
