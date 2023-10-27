import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_money_diary/core/foundation/json/color.dart';

part 'receipt_category.freezed.dart';
part 'receipt_category.g.dart';

@freezed
class ReceiptCategory with _$ReceiptCategory {
  const factory ReceiptCategory({
    required String id,
    required String name,
    String? description,
    @JsonKey(
      fromJson: colorFromHexNullable,
      toJson: colorToHexNullable,
    )
    Color? color,
    required String createdBy,
    required DateTime createdAt,
  }) = _ReceiptCategory;

  factory ReceiptCategory.fromJson(Map<String, dynamic> json) =>
      _$ReceiptCategoryFromJson(json);
}
