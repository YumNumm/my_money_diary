import 'package:freezed_annotation/freezed_annotation.dart';

part 'insert_receipt.freezed.dart';
part 'insert_receipt.g.dart';

@freezed
class ReceiptInsertDto with _$ReceiptInsertDto {
  const factory ReceiptInsertDto({
    required String name,
    String? description,
    required double amount,
    String? categoryId,
  }) = _ReceiptInsertDto;

  factory ReceiptInsertDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptInsertDtoFromJson(json);
}
