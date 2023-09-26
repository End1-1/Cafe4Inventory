// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_base_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructBaseItem _$StructBaseItemFromJson(Map<String, dynamic> json) {
  return _StructBaseItem.fromJson(json);
}

/// @nodoc
mixin _$StructBaseItem {
  String get finvnumcode => throw _privateConstructorUsedError;
  String get fcaption => throw _privateConstructorUsedError;
  String get fdepart => throw _privateConstructorUsedError;
  double? get fqty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructBaseItemCopyWith<StructBaseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructBaseItemCopyWith<$Res> {
  factory $StructBaseItemCopyWith(
          StructBaseItem value, $Res Function(StructBaseItem) then) =
      _$StructBaseItemCopyWithImpl<$Res, StructBaseItem>;
  @useResult
  $Res call(
      {String finvnumcode, String fcaption, String fdepart, double? fqty});
}

/// @nodoc
class _$StructBaseItemCopyWithImpl<$Res, $Val extends StructBaseItem>
    implements $StructBaseItemCopyWith<$Res> {
  _$StructBaseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finvnumcode = null,
    Object? fcaption = null,
    Object? fdepart = null,
    Object? fqty = freezed,
  }) {
    return _then(_value.copyWith(
      finvnumcode: null == finvnumcode
          ? _value.finvnumcode
          : finvnumcode // ignore: cast_nullable_to_non_nullable
              as String,
      fcaption: null == fcaption
          ? _value.fcaption
          : fcaption // ignore: cast_nullable_to_non_nullable
              as String,
      fdepart: null == fdepart
          ? _value.fdepart
          : fdepart // ignore: cast_nullable_to_non_nullable
              as String,
      fqty: freezed == fqty
          ? _value.fqty
          : fqty // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructBaseItemCopyWith<$Res>
    implements $StructBaseItemCopyWith<$Res> {
  factory _$$_StructBaseItemCopyWith(
          _$_StructBaseItem value, $Res Function(_$_StructBaseItem) then) =
      __$$_StructBaseItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String finvnumcode, String fcaption, String fdepart, double? fqty});
}

/// @nodoc
class __$$_StructBaseItemCopyWithImpl<$Res>
    extends _$StructBaseItemCopyWithImpl<$Res, _$_StructBaseItem>
    implements _$$_StructBaseItemCopyWith<$Res> {
  __$$_StructBaseItemCopyWithImpl(
      _$_StructBaseItem _value, $Res Function(_$_StructBaseItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finvnumcode = null,
    Object? fcaption = null,
    Object? fdepart = null,
    Object? fqty = freezed,
  }) {
    return _then(_$_StructBaseItem(
      finvnumcode: null == finvnumcode
          ? _value.finvnumcode
          : finvnumcode // ignore: cast_nullable_to_non_nullable
              as String,
      fcaption: null == fcaption
          ? _value.fcaption
          : fcaption // ignore: cast_nullable_to_non_nullable
              as String,
      fdepart: null == fdepart
          ? _value.fdepart
          : fdepart // ignore: cast_nullable_to_non_nullable
              as String,
      fqty: freezed == fqty
          ? _value.fqty
          : fqty // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructBaseItem extends _StructBaseItem {
  const _$_StructBaseItem(
      {required this.finvnumcode,
      required this.fcaption,
      required this.fdepart,
      required this.fqty})
      : super._();

  factory _$_StructBaseItem.fromJson(Map<String, dynamic> json) =>
      _$$_StructBaseItemFromJson(json);

  @override
  final String finvnumcode;
  @override
  final String fcaption;
  @override
  final String fdepart;
  @override
  final double? fqty;

  @override
  String toString() {
    return 'StructBaseItem(finvnumcode: $finvnumcode, fcaption: $fcaption, fdepart: $fdepart, fqty: $fqty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructBaseItem &&
            (identical(other.finvnumcode, finvnumcode) ||
                other.finvnumcode == finvnumcode) &&
            (identical(other.fcaption, fcaption) ||
                other.fcaption == fcaption) &&
            (identical(other.fdepart, fdepart) || other.fdepart == fdepart) &&
            (identical(other.fqty, fqty) || other.fqty == fqty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, finvnumcode, fcaption, fdepart, fqty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructBaseItemCopyWith<_$_StructBaseItem> get copyWith =>
      __$$_StructBaseItemCopyWithImpl<_$_StructBaseItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructBaseItemToJson(
      this,
    );
  }
}

abstract class _StructBaseItem extends StructBaseItem {
  const factory _StructBaseItem(
      {required final String finvnumcode,
      required final String fcaption,
      required final String fdepart,
      required final double? fqty}) = _$_StructBaseItem;
  const _StructBaseItem._() : super._();

  factory _StructBaseItem.fromJson(Map<String, dynamic> json) =
      _$_StructBaseItem.fromJson;

  @override
  String get finvnumcode;
  @override
  String get fcaption;
  @override
  String get fdepart;
  @override
  double? get fqty;
  @override
  @JsonKey(ignore: true)
  _$$_StructBaseItemCopyWith<_$_StructBaseItem> get copyWith =>
      throw _privateConstructorUsedError;
}
