// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'insert_receipt_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptCategoryInsertDto _$$_ReceiptCategoryInsertDtoFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ReceiptCategoryInsertDto',
      json,
      ($checkedConvert) {
        final val = _$_ReceiptCategoryInsertDto(
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          color: $checkedConvert(
              'color', (v) => colorFromHexNullable(v as String?)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ReceiptCategoryInsertDtoToJson(
        _$_ReceiptCategoryInsertDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'color': colorToHexNullable(instance.color),
    };
