// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'receipt_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptCategory _$$_ReceiptCategoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ReceiptCategory',
      json,
      ($checkedConvert) {
        final val = _$_ReceiptCategory(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          color: $checkedConvert(
              'color', (v) => colorFromHexNullable(v as String?)),
          createdBy: $checkedConvert('created_by', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdBy': 'created_by', 'createdAt': 'created_at'},
    );

Map<String, dynamic> _$$_ReceiptCategoryToJson(_$_ReceiptCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'color': colorToHexNullable(instance.color),
      'created_by': instance.createdBy,
      'created_at': instance.createdAt.toIso8601String(),
    };
