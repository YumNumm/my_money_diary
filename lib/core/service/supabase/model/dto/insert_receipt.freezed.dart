// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insert_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptInsertDto _$ReceiptInsertDtoFromJson(Map<String, dynamic> json) {
  return _ReceiptInsertDto.fromJson(json);
}

/// @nodoc
mixin _$ReceiptInsertDto {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptInsertDtoCopyWith<ReceiptInsertDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptInsertDtoCopyWith<$Res> {
  factory $ReceiptInsertDtoCopyWith(
          ReceiptInsertDto value, $Res Function(ReceiptInsertDto) then) =
      _$ReceiptInsertDtoCopyWithImpl<$Res, ReceiptInsertDto>;
  @useResult
  $Res call(
      {String name, String? description, double amount, String? categoryId});
}

/// @nodoc
class _$ReceiptInsertDtoCopyWithImpl<$Res, $Val extends ReceiptInsertDto>
    implements $ReceiptInsertDtoCopyWith<$Res> {
  _$ReceiptInsertDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? amount = null,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptInsertDtoCopyWith<$Res>
    implements $ReceiptInsertDtoCopyWith<$Res> {
  factory _$$_ReceiptInsertDtoCopyWith(
          _$_ReceiptInsertDto value, $Res Function(_$_ReceiptInsertDto) then) =
      __$$_ReceiptInsertDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String? description, double amount, String? categoryId});
}

/// @nodoc
class __$$_ReceiptInsertDtoCopyWithImpl<$Res>
    extends _$ReceiptInsertDtoCopyWithImpl<$Res, _$_ReceiptInsertDto>
    implements _$$_ReceiptInsertDtoCopyWith<$Res> {
  __$$_ReceiptInsertDtoCopyWithImpl(
      _$_ReceiptInsertDto _value, $Res Function(_$_ReceiptInsertDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? amount = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$_ReceiptInsertDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiptInsertDto implements _ReceiptInsertDto {
  const _$_ReceiptInsertDto(
      {required this.name,
      this.description,
      required this.amount,
      this.categoryId});

  factory _$_ReceiptInsertDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptInsertDtoFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final double amount;
  @override
  final String? categoryId;

  @override
  String toString() {
    return 'ReceiptInsertDto(name: $name, description: $description, amount: $amount, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptInsertDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, amount, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptInsertDtoCopyWith<_$_ReceiptInsertDto> get copyWith =>
      __$$_ReceiptInsertDtoCopyWithImpl<_$_ReceiptInsertDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptInsertDtoToJson(
      this,
    );
  }
}

abstract class _ReceiptInsertDto implements ReceiptInsertDto {
  const factory _ReceiptInsertDto(
      {required final String name,
      final String? description,
      required final double amount,
      final String? categoryId}) = _$_ReceiptInsertDto;

  factory _ReceiptInsertDto.fromJson(Map<String, dynamic> json) =
      _$_ReceiptInsertDto.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  double get amount;
  @override
  String? get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptInsertDtoCopyWith<_$_ReceiptInsertDto> get copyWith =>
      throw _privateConstructorUsedError;
}
