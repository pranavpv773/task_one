// To parse this JSON data, do
//
//     final balanceModel = balanceModelFromJson(jsonString);

import 'dart:convert';

// class BalanceResultModel {
//   BalanceResultModel({
//     required this.data,
//   });

//   List<BalanceModel> data;

//   factory BalanceResultModel.fromJson(Map<String, dynamic> json) =>
//       BalanceResultModel(
//         data: json["data"] == []
//             ? []
//             : List<BalanceModel>.from(
//                 json["data"].map((x) => BalanceModel.fromJson(x))),
//       );
// }

BalanceModel balanceModelFromJson(String str) =>
    BalanceModel.fromJson(json.decode(str));

String balanceModelToJson(BalanceModel data) => json.encode(data.toJson());

class BalanceModel {
  BalanceModel({
    this.errorFlag,
    this.message,
    required this.datas,
  });

  String? errorFlag;
  String? message;
  List<Datum> datas;

  factory BalanceModel.fromJson(Map<String, dynamic> json) => BalanceModel(
        errorFlag: json["error_flag"],
        message: json["message"],
        datas: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error_flag": errorFlag,
        "message": message,
        "data": List<dynamic>.from(datas.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.availableAmount,
    this.currency,
    this.pendingAmount,
    this.reservedAmount,
    this.totalAmount,
    this.currencyCodeIso2,
    this.currencySymbolIso2,
  });

  String? availableAmount;
  String? currency;
  String? pendingAmount;
  String? reservedAmount;
  String? totalAmount;
  String? currencyCodeIso2;
  String? currencySymbolIso2;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        availableAmount: json["available_amount"] ?? " ",
        currency: json["currency"] ?? " ",
        pendingAmount: json["pending_amount"] ?? " ",
        reservedAmount: json["reserved_amount"] ?? " ",
        totalAmount: json["total_amount"] ?? " ",
        currencyCodeIso2: json["currency_code_iso2"] ?? " ",
        currencySymbolIso2: json["currency_symbol_iso2"] ?? " ",
      );

  Map<String, dynamic> toJson() => {
        "available_amount": availableAmount,
        "currency": currency,
        "pending_amount": pendingAmount,
        "reserved_amount": reservedAmount,
        "total_amount": totalAmount,
        "currency_code_iso2": currencyCodeIso2,
        "currency_symbol_iso2": currencySymbolIso2,
      };
}
