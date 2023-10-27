import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_money_diary/core/foundation/json/color.dart';

part 'insert_receipt_category.freezed.dart';
part 'insert_receipt_category.g.dart';

@freezed
class ReceiptCategoryInsertDto with _$ReceiptCategoryInsertDto {
  const factory ReceiptCategoryInsertDto({
    required String name,
    String? description,
    @JsonKey(
      fromJson: colorFromHexNullable,
      toJson: colorToHexNullable,
    )
    Color? color,
  }) = _ReceiptCategoryInsertDto;

  factory ReceiptCategoryInsertDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptCategoryInsertDtoFromJson(json);
}
