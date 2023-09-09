class Productitemmovement {
  final int productitemmovementID;
  final int employeeID;
  final int assigntoemployeeDATETIME;
  final String isproductitemmoved;
  final String productitemmovementDATETIME;

  const Productitemmovement({
    required this.productitemmovementID,
    required this.employeeID,
    required this.assigntoemployeeDATETIME,
    required this.isproductitemmoved,
    required this.productitemmovementDATETIME,
  });

  factory Productitemmovement.fromJson(Map<String, dynamic> json) {
    return Productitemmovement(
      productitemmovementID: json['productitemmovement_ID'],
      employeeID: json['employee_ID'],
      assigntoemployeeDATETIME: json['assigntoemployee_DATETIME'],
      isproductitemmoved: json['isproductitemmoved'],
      productitemmovementDATETIME: json['productitemmovement_DATETIME'],
    );
  }
}
