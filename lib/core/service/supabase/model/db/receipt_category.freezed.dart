// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptCategory _$ReceiptCategoryFromJson(Map<String, dynamic> json) {
  return _ReceiptCategory.fromJson(json);
}

/// @nodoc
mixin _$ReceiptCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
  Color? get color => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptCategoryCopyWith<ReceiptCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCategoryCopyWith<$Res> {
  factory $ReceiptCategoryCopyWith(
          ReceiptCategory value, $Res Function(ReceiptCategory) then) =
      _$ReceiptCategoryCopyWithImpl<$Res, ReceiptCategory>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      Color? color,
      String createdBy,
      DateTime createdAt});
}

/// @nodoc
class _$ReceiptCategoryCopyWithImpl<$Res, $Val extends ReceiptCategory>
    implements $ReceiptCategoryCopyWith<$Res> {
  _$ReceiptCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? color = freezed,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptCategoryCopyWith<$Res>
    implements $ReceiptCategoryCopyWith<$Res> {
  factory _$$_ReceiptCategoryCopyWith(
          _$_ReceiptCategory value, $Res Function(_$_ReceiptCategory) then) =
      __$$_ReceiptCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      Color? color,
      String createdBy,
      DateTime createdAt});
}

/// @nodoc
class __$$_ReceiptCategoryCopyWithImpl<$Res>
    extends _$ReceiptCategoryCopyWithImpl<$Res, _$_ReceiptCategory>
    implements _$$_ReceiptCategoryCopyWith<$Res> {
  __$$_ReceiptCategoryCopyWithImpl(
      _$_ReceiptCategory _value, $Res Function(_$_ReceiptCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? color = freezed,
    Object? createdBy = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ReceiptCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiptCategory implements _ReceiptCategory {
  const _$_ReceiptCategory(
      {required this.id,
      required this.name,
      this.description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      this.color,
      required this.createdBy,
      required this.createdAt});

  factory _$_ReceiptCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
  final Color? color;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ReceiptCategory(id: $id, name: $name, description: $description, color: $color, createdBy: $createdBy, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, color, createdBy, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptCategoryCopyWith<_$_ReceiptCategory> get copyWith =>
      __$$_ReceiptCategoryCopyWithImpl<_$_ReceiptCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptCategoryToJson(
      this,
    );
  }
}

abstract class _ReceiptCategory implements ReceiptCategory {
  const factory _ReceiptCategory(
      {required final String id,
      required final String name,
      final String? description,
      @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
      final Color? color,
      required final String createdBy,
      required final DateTime createdAt}) = _$_ReceiptCategory;

  factory _ReceiptCategory.fromJson(Map<String, dynamic> json) =
      _$_ReceiptCategory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(fromJson: colorFromHexNullable, toJson: colorToHexNullable)
  Color? get color;
  @override
  String get createdBy;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCategoryCopyWith<_$_ReceiptCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
