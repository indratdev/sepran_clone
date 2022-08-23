// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as int?,
      isIncome: json['isIncome'] as bool? ?? true,
      name: json['name'] as String,
      iconName: json['iconName'] as String,
      isDefault: json['isDefault'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
      createdTime: json['createdTime'] as String?,
      modifieldTime: json['modifieldTime'] as String?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isIncome': instance.isIncome,
      'name': instance.name,
      'iconName': instance.iconName,
      'isDefault': instance.isDefault,
      'isActive': instance.isActive,
      'createdTime': instance.createdTime,
      'modifieldTime': instance.modifieldTime,
    };
