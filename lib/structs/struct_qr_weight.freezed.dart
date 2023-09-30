// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_qr_weight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructQrWeight _$StructQrWeightFromJson(Map<String, dynamic> json) {
  return _StructQrWeight.fromJson(json);
}

/// @nodoc
mixin _$StructQrWeight {
  int get id => throw _privateConstructorUsedError;
  int get goods_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get qr => throw _privateConstructorUsedError;
  double get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructQrWeightCopyWith<StructQrWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructQrWeightCopyWith<$Res> {
  factory $StructQrWeightCopyWith(
          StructQrWeight value, $Res Function(StructQrWeight) then) =
      _$StructQrWeightCopyWithImpl<$Res, StructQrWeight>;
  @useResult
  $Res call({int id, int goods_id, String name, String qr, double qty});
}

/// @nodoc
class _$StructQrWeightCopyWithImpl<$Res, $Val extends StructQrWeight>
    implements $StructQrWeightCopyWith<$Res> {
  _$StructQrWeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goods_id = null,
    Object? name = null,
    Object? qr = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      goods_id: null == goods_id
          ? _value.goods_id
          : goods_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qr: null == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructQrWeightCopyWith<$Res>
    implements $StructQrWeightCopyWith<$Res> {
  factory _$$_StructQrWeightCopyWith(
          _$_StructQrWeight value, $Res Function(_$_StructQrWeight) then) =
      __$$_StructQrWeightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int goods_id, String name, String qr, double qty});
}

/// @nodoc
class __$$_StructQrWeightCopyWithImpl<$Res>
    extends _$StructQrWeightCopyWithImpl<$Res, _$_StructQrWeight>
    implements _$$_StructQrWeightCopyWith<$Res> {
  __$$_StructQrWeightCopyWithImpl(
      _$_StructQrWeight _value, $Res Function(_$_StructQrWeight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goods_id = null,
    Object? name = null,
    Object? qr = null,
    Object? qty = null,
  }) {
    return _then(_$_StructQrWeight(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      goods_id: null == goods_id
          ? _value.goods_id
          : goods_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qr: null == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
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
class _$_StructQrWeight implements _StructQrWeight {
  const _$_StructQrWeight(
      {required this.id,
      required this.goods_id,
      required this.name,
      required this.qr,
      required this.qty});

  factory _$_StructQrWeight.fromJson(Map<String, dynamic> json) =>
      _$$_StructQrWeightFromJson(json);

  @override
  final int id;
  @override
  final int goods_id;
  @override
  final String name;
  @override
  final String qr;
  @override
  final double qty;

  @override
  String toString() {
    return 'StructQrWeight(id: $id, goods_id: $goods_id, name: $name, qr: $qr, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructQrWeight &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goods_id, goods_id) ||
                other.goods_id == goods_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.qr, qr) || other.qr == qr) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, goods_id, name, qr, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructQrWeightCopyWith<_$_StructQrWeight> get copyWith =>
      __$$_StructQrWeightCopyWithImpl<_$_StructQrWeight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructQrWeightToJson(
      this,
    );
  }
}

abstract class _StructQrWeight implements StructQrWeight {
  const factory _StructQrWeight(
      {required final int id,
      required final int goods_id,
      required final String name,
      required final String qr,
      required final double qty}) = _$_StructQrWeight;

  factory _StructQrWeight.fromJson(Map<String, dynamic> json) =
      _$_StructQrWeight.fromJson;

  @override
  int get id;
  @override
  int get goods_id;
  @override
  String get name;
  @override
  String get qr;
  @override
  double get qty;
  @override
  @JsonKey(ignore: true)
  _$$_StructQrWeightCopyWith<_$_StructQrWeight> get copyWith =>
      throw _privateConstructorUsedError;
}
