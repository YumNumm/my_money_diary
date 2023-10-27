// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insert_receipt_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptCategoryInsertDto _$ReceiptCategoryInsertDtoFromJson(
    Map<String, dynamic> json) {
  return _ReceiptCategoryInsertDto.fromJson(json);
}

/// @nodoc
mixin _$ReceiptCategoryInsertDto {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptCategoryInsertDtoCopyWith<ReceiptCategoryInsertDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCategoryInsertDtoCopyWith<$Res> {
  factory $ReceiptCategoryInsertDtoCopyWith(ReceiptCategoryInsertDto value,
          $Res Function(ReceiptCategoryInsertDto) then) =
      _$ReceiptCategoryInsertDtoCopyWithImpl<$Res, ReceiptCategoryInsertDto>;
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      Color? color});
}

/// @nodoc
class _$ReceiptCategoryInsertDtoCopyWithImpl<$Res,
        $Val extends ReceiptCategoryInsertDto>
    implements $ReceiptCategoryInsertDtoCopyWith<$Res> {
  _$ReceiptCategoryInsertDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? color = freezed,
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
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptCategoryInsertDtoCopyWith<$Res>
    implements $ReceiptCategoryInsertDtoCopyWith<$Res> {
  factory _$$_ReceiptCategoryInsertDtoCopyWith(
          _$_ReceiptCategoryInsertDto value,
          $Res Function(_$_ReceiptCategoryInsertDto) then) =
      __$$_ReceiptCategoryInsertDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      Color? color});
}

/// @nodoc
class __$$_ReceiptCategoryInsertDtoCopyWithImpl<$Res>
    extends _$ReceiptCategoryInsertDtoCopyWithImpl<$Res,
        _$_ReceiptCategoryInsertDto>
    implements _$$_ReceiptCategoryInsertDtoCopyWith<$Res> {
  __$$_ReceiptCategoryInsertDtoCopyWithImpl(_$_ReceiptCategoryInsertDto _value,
      $Res Function(_$_ReceiptCategoryInsertDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_ReceiptCategoryInsertDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiptCategoryInsertDto implements _ReceiptCategoryInsertDto {
  const _$_ReceiptCategoryInsertDto(
      {required this.name,
      this.description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      this.color});

  factory _$_ReceiptCategoryInsertDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptCategoryInsertDtoFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
  final Color? color;

  @override
  String toString() {
    return 'ReceiptCategoryInsertDto(name: $name, description: $description, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptCategoryInsertDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptCategoryInsertDtoCopyWith<_$_ReceiptCategoryInsertDto>
      get copyWith => __$$_ReceiptCategoryInsertDtoCopyWithImpl<
          _$_ReceiptCategoryInsertDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptCategoryInsertDtoToJson(
      this,
    );
  }
}

abstract class _ReceiptCategoryInsertDto implements ReceiptCategoryInsertDto {
  const factory _ReceiptCategoryInsertDto(
      {required final String name,
      final String? description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      final Color? color}) = _$_ReceiptCategoryInsertDto;

  factory _ReceiptCategoryInsertDto.fromJson(Map<String, dynamic> json) =
      _$_ReceiptCategoryInsertDto.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCategoryInsertDtoCopyWith<_$_ReceiptCategoryInsertDto>
      get copyWith => throw _privateConstructorUsedError;
}
