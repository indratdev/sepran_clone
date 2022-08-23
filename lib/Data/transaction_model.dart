import 'package:json_annotation/json_annotation.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class TransactionModel {
  int? id, idCategory;
  String title, iconName, description;
  double amount;
  String? createdTime, createdTrxTime, modifieldTrxTime;
  int isModifield;

  TransactionModel({
    this.id,
    this.idCategory,
    this.title = "",
    this.iconName = "",
    this.description = "",
    this.amount = 0.0,
    this.createdTime = "",
    this.createdTrxTime = "",
    this.modifieldTrxTime = "",
    this.isModifield = 0,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
