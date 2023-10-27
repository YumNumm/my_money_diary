// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'insert_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptInsertDto _$$_ReceiptInsertDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ReceiptInsertDto',
      json,
      ($checkedConvert) {
        final val = _$_ReceiptInsertDto(
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
          categoryId: $checkedConvert('category_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'categoryId': 'category_id'},
    );

Map<String, dynamic> _$$_ReceiptInsertDtoToJson(_$_ReceiptInsertDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'category_id': instance.categoryId,
    };
