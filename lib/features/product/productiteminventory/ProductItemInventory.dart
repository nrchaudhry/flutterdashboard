import 'dart:convert';

//import '../university/University.dart';

class Productiteminventory {
  final int productiteminventoryID;
  final int productitemID;
  final String productitemDETAIL;
  final int locationID;
  final String locationDETAIL;
  final String quantityONHAND;
  final String quantityONORDER;
  final String quantityCOMMITTED;
  final String quantityAVAILABLE;
  final String quantityBACKORDER;
  final String quantityINTRANSIT;
  final String quantityexternalINTRANSIT;
  final String quantitybaseunitONHAND;
  final String quantitybaseunitAVAILABLE;
  final int value;
  final String averageCOST;
  final String lastpurchasePRICE;
  final String reorderPOINT;
  final String autolocationassignmentALLOWED;
  final String autolocationassignmentSUSPENDED;
  final String preferedstockLEVEL;
  final String purchaseleadTIME;
  final String staftystockLEVEL;
  final String atpleadTIME;
  final String defaultreturnCOST;
  final String lastcountDATE;
  final String nectcountDATE;
  final String countINTERVAL;
  final int inventoryclassificationID;
  final String isactive;

  const Productiteminventory({
    required this.productiteminventoryID,
    required this.productitemID,
    required this.productitemDETAIL,
    required this.locationID,
    required this.locationDETAIL,
    required this.quantityONHAND,
    required this.quantityONORDER,
    required this.quantityCOMMITTED,
    required this.quantityAVAILABLE,
    required this.quantityBACKORDER,
    required this.quantityINTRANSIT,
    required this.quantityexternalINTRANSIT,
    required this.quantitybaseunitONHAND,
    required this.quantitybaseunitAVAILABLE,
    required this.value,
    required this.averageCOST,
    required this.lastpurchasePRICE,
    required this.reorderPOINT,
    required this.autolocationassignmentALLOWED,
    required this.autolocationassignmentSUSPENDED,
    required this.preferedstockLEVEL,
    required this.purchaseleadTIME,
    required this.staftystockLEVEL,
    required this.atpleadTIME,
    required this.defaultreturnCOST,
    required this.lastcountDATE,
    required this.nectcountDATE,
    required this.countINTERVAL,
    required this.inventoryclassificationID,
    required this.isactive,
  });

  factory Productiteminventory.fromJson(Map<String, dynamic> json) {
    return Productiteminventory(
      productiteminventoryID: json['productiteminventory_ID'],
      productitemID: json['productitem_ID'],
      productitemDETAIL:
          "ProductItem.fromJson(jsonDecode(json['productitem_DETAIL']))",
      locationID: json['location_ID'],
      locationDETAIL: "Location.fromJson(jsonDecode(json['location_DETAIL']))",
      quantityONHAND: json['quantitys_ONHAND'],
      quantityONORDER: json['quantity_ONORDER'],
      quantityCOMMITTED: json['quantity_COMMITTED'],
      quantityAVAILABLE: json['quantity_AVAILABLE'],
      quantityBACKORDER: json['quantity_BACKORDER'],
      quantityINTRANSIT: json['quantity_INTRANSIT'],
      quantityexternalINTRANSIT: json['quantityexternal_INTRANSIT'],
      quantitybaseunitONHAND: json[' quantitybaseunit_ONHAND'],
      quantitybaseunitAVAILABLE: json['quantitybaseunit_AVAILABLE'],
      value: json['value'],
      averageCOST: json['average_COST'],
      lastpurchasePRICE: json['lastpurchase_PRICE'],
      reorderPOINT: json['reorder'],
      autolocationassignmentALLOWED: json['autolocationassignment_ALLOWED'],
      autolocationassignmentSUSPENDED: json['autolocationassignment_SUSPENDED'],
      preferedstockLEVEL: json['preferedstock_LEVEL'],
      purchaseleadTIME: json['purchaselead_TIME'],
      staftystockLEVEL: json['staftystock_LEVEL'],
      atpleadTIME: json['atplead_TIME'],
      defaultreturnCOST: json['defaultreturn_COST'],
      lastcountDATE: json['lastcount_DATE'],
      nectcountDATE: json['nectcount_DATE'],
      countINTERVAL: json['count_INTERVAL'],
      inventoryclassificationID: json['inventoryclassification_ID'],
      isactive: json['isactive'],
    );
  }
}
