// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_store_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructStoreItem _$StructStoreItemFromJson(Map<String, dynamic> json) {
  return _StructStoreItem.fromJson(json);
}

/// @nodoc
mixin _$StructStoreItem {
  int get fmtid => throw _privateConstructorUsedError;
  String get fmtcode => throw _privateConstructorUsedError;
  String get fstorage => throw _privateConstructorUsedError;
  String get fcaption => throw _privateConstructorUsedError;
  double get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructStoreItemCopyWith<StructStoreItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructStoreItemCopyWith<$Res> {
  factory $StructStoreItemCopyWith(
          StructStoreItem value, $Res Function(StructStoreItem) then) =
      _$StructStoreItemCopyWithImpl<$Res, StructStoreItem>;
  @useResult
  $Res call(
      {int fmtid,
      String fmtcode,
      String fstorage,
      String fcaption,
      double qty});
}

/// @nodoc
class _$StructStoreItemCopyWithImpl<$Res, $Val extends StructStoreItem>
    implements $StructStoreItemCopyWith<$Res> {
  _$StructStoreItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fmtid = null,
    Object? fmtcode = null,
    Object? fstorage = null,
    Object? fcaption = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      fmtid: null == fmtid
          ? _value.fmtid
          : fmtid // ignore: cast_nullable_to_non_nullable
              as int,
      fmtcode: null == fmtcode
          ? _value.fmtcode
          : fmtcode // ignore: cast_nullable_to_non_nullable
              as String,
      fstorage: null == fstorage
          ? _value.fstorage
          : fstorage // ignore: cast_nullable_to_non_nullable
              as String,
      fcaption: null == fcaption
          ? _value.fcaption
          : fcaption // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructStoreItemCopyWith<$Res>
    implements $StructStoreItemCopyWith<$Res> {
  factory _$$_StructStoreItemCopyWith(
          _$_StructStoreItem value, $Res Function(_$_StructStoreItem) then) =
      __$$_StructStoreItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int fmtid,
      String fmtcode,
      String fstorage,
      String fcaption,
      double qty});
}

/// @nodoc
class __$$_StructStoreItemCopyWithImpl<$Res>
    extends _$StructStoreItemCopyWithImpl<$Res, _$_StructStoreItem>
    implements _$$_StructStoreItemCopyWith<$Res> {
  __$$_StructStoreItemCopyWithImpl(
      _$_StructStoreItem _value, $Res Function(_$_StructStoreItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fmtid = null,
    Object? fmtcode = null,
    Object? fstorage = null,
    Object? fcaption = null,
    Object? qty = null,
  }) {
    return _then(_$_StructStoreItem(
      fmtid: null == fmtid
          ? _value.fmtid
          : fmtid // ignore: cast_nullable_to_non_nullable
              as int,
      fmtcode: null == fmtcode
          ? _value.fmtcode
          : fmtcode // ignore: cast_nullable_to_non_nullable
              as String,
      fstorage: null == fstorage
          ? _value.fstorage
          : fstorage // ignore: cast_nullable_to_non_nullable
              as String,
      fcaption: null == fcaption
          ? _value.fcaption
          : fcaption // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructStoreItem extends _StructStoreItem {
  const _$_StructStoreItem(
      {required this.fmtid,
      required this.fmtcode,
      required this.fstorage,
      required this.fcaption,
      required this.qty})
      : super._();

  factory _$_StructStoreItem.fromJson(Map<String, dynamic> json) =>
      _$$_StructStoreItemFromJson(json);

  @override
  final int fmtid;
  @override
  final String fmtcode;
  @override
  final String fstorage;
  @override
  final String fcaption;
  @override
  final double qty;

  @override
  String toString() {
    return 'StructStoreItem(fmtid: $fmtid, fmtcode: $fmtcode, fstorage: $fstorage, fcaption: $fcaption, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructStoreItem &&
            (identical(other.fmtid, fmtid) || other.fmtid == fmtid) &&
            (identical(other.fmtcode, fmtcode) || other.fmtcode == fmtcode) &&
            (identical(other.fstorage, fstorage) ||
                other.fstorage == fstorage) &&
            (identical(other.fcaption, fcaption) ||
                other.fcaption == fcaption) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fmtid, fmtcode, fstorage, fcaption, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructStoreItemCopyWith<_$_StructStoreItem> get copyWith =>
      __$$_StructStoreItemCopyWithImpl<_$_StructStoreItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructStoreItemToJson(
      this,
    );
  }
}

abstract class _StructStoreItem extends StructStoreItem {
  const factory _StructStoreItem(
      {required final int fmtid,
      required final String fmtcode,
      required final String fstorage,
      required final String fcaption,
      required final double qty}) = _$_StructStoreItem;
  const _StructStoreItem._() : super._();

  factory _StructStoreItem.fromJson(Map<String, dynamic> json) =
      _$_StructStoreItem.fromJson;

  @override
  int get fmtid;
  @override
  String get fmtcode;
  @override
  String get fstorage;
  @override
  String get fcaption;
  @override
  double get qty;
  @override
  @JsonKey(ignore: true)
  _$$_StructStoreItemCopyWith<_$_StructStoreItem> get copyWith =>
      throw _privateConstructorUsedError;
}
