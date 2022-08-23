// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      id: json['id'] as int?,
      idCategory: json['idCategory'] as int?,
      title: json['title'] as String? ?? "",
      iconName: json['iconName'] as String? ?? "",
      description: json['description'] as String? ?? "",
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      createdTime: json['createdTime'] as String? ?? "",
      createdTrxTime: json['createdTrxTime'] as String? ?? "",
      modifieldTrxTime: json['modifieldTrxTime'] as String? ?? "",
      isModifield: json['isModifield'] as int? ?? 0,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idCategory': instance.idCategory,
      'title': instance.title,
      'iconName': instance.iconName,
      'description': instance.description,
      'amount': instance.amount,
      'createdTime': instance.createdTime,
      'createdTrxTime': instance.createdTrxTime,
      'modifieldTrxTime': instance.modifieldTrxTime,
      'isModifield': instance.isModifield,
    };
