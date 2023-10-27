// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Receipt _$$_ReceiptFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Receipt',
      json,
      ($checkedConvert) {
        final val = _$_Receipt(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
          categoryId: $checkedConvert('category_id', (v) => v as String?),
          purchasedAt: $checkedConvert(
              'purchased_at', (v) => DateTime.parse(v as String)),
          createdBy: $checkedConvert('created_by', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'categoryId': 'category_id',
        'purchasedAt': 'purchased_at',
        'createdBy': 'created_by',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_ReceiptToJson(_$_Receipt instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'category_id': instance.categoryId,
      'purchased_at': instance.purchasedAt.toIso8601String(),
      'created_by': instance.createdBy,
      'created_at': instance.createdAt.toIso8601String(),
    };
