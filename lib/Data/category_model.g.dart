// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as int?,
      isIncome: json['isIncome'] as int? ?? 1,
      name: json['name'] as String,
      iconName: json['iconName'] as String? ?? "",
      isDefault: json['isDefault'] as int? ?? 0,
      isActive: json['isActive'] as int? ?? 1,
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

CategoryMasterModel _$CategoryMasterModelFromJson(Map<String, dynamic> json) =>
    CategoryMasterModel(
      id: json['id'] as int?,
      name: json['name'] as String,
      iconName: json['iconName'] as String? ?? "",
    );

Map<String, dynamic> _$CategoryMasterModelToJson(
        CategoryMasterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconName': instance.iconName,
    };
