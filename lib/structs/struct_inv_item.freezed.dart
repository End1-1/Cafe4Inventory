// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_inv_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructInvItem _$StructInvItemFromJson(Map<String, dynamic> json) {
  return _StructInvItem.fromJson(json);
}

/// @nodoc
mixin _$StructInvItem {
  int get id => throw _privateConstructorUsedError;
  int get goods_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get qty => throw _privateConstructorUsedError;
  double get tara => throw _privateConstructorUsedError;
  String get qr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructInvItemCopyWith<StructInvItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructInvItemCopyWith<$Res> {
  factory $StructInvItemCopyWith(
          StructInvItem value, $Res Function(StructInvItem) then) =
      _$StructInvItemCopyWithImpl<$Res, StructInvItem>;
  @useResult
  $Res call(
      {int id, int goods_id, String name, double qty, double tara, String qr});
}

/// @nodoc
class _$StructInvItemCopyWithImpl<$Res, $Val extends StructInvItem>
    implements $StructInvItemCopyWith<$Res> {
  _$StructInvItemCopyWithImpl(this._value, this._then);

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
    Object? qty = null,
    Object? tara = null,
    Object? qr = null,
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
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      tara: null == tara
          ? _value.tara
          : tara // ignore: cast_nullable_to_non_nullable
              as double,
      qr: null == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructInvItemCopyWith<$Res>
    implements $StructInvItemCopyWith<$Res> {
  factory _$$_StructInvItemCopyWith(
          _$_StructInvItem value, $Res Function(_$_StructInvItem) then) =
      __$$_StructInvItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int goods_id, String name, double qty, double tara, String qr});
}

/// @nodoc
class __$$_StructInvItemCopyWithImpl<$Res>
    extends _$StructInvItemCopyWithImpl<$Res, _$_StructInvItem>
    implements _$$_StructInvItemCopyWith<$Res> {
  __$$_StructInvItemCopyWithImpl(
      _$_StructInvItem _value, $Res Function(_$_StructInvItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goods_id = null,
    Object? name = null,
    Object? qty = null,
    Object? tara = null,
    Object? qr = null,
  }) {
    return _then(_$_StructInvItem(
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
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      tara: null == tara
          ? _value.tara
          : tara // ignore: cast_nullable_to_non_nullable
              as double,
      qr: null == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructInvItem implements _StructInvItem {
  const _$_StructInvItem(
      {required this.id,
      required this.goods_id,
      required this.name,
      required this.qty,
      required this.tara,
      required this.qr});

  factory _$_StructInvItem.fromJson(Map<String, dynamic> json) =>
      _$$_StructInvItemFromJson(json);

  @override
  final int id;
  @override
  final int goods_id;
  @override
  final String name;
  @override
  final double qty;
  @override
  final double tara;
  @override
  final String qr;

  @override
  String toString() {
    return 'StructInvItem(id: $id, goods_id: $goods_id, name: $name, qty: $qty, tara: $tara, qr: $qr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructInvItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goods_id, goods_id) ||
                other.goods_id == goods_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.tara, tara) || other.tara == tara) &&
            (identical(other.qr, qr) || other.qr == qr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, goods_id, name, qty, tara, qr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructInvItemCopyWith<_$_StructInvItem> get copyWith =>
      __$$_StructInvItemCopyWithImpl<_$_StructInvItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructInvItemToJson(
      this,
    );
  }
}

abstract class _StructInvItem implements StructInvItem {
  const factory _StructInvItem(
      {required final int id,
      required final int goods_id,
      required final String name,
      required final double qty,
      required final double tara,
      required final String qr}) = _$_StructInvItem;

  factory _StructInvItem.fromJson(Map<String, dynamic> json) =
      _$_StructInvItem.fromJson;

  @override
  int get id;
  @override
  int get goods_id;
  @override
  String get name;
  @override
  double get qty;
  @override
  double get tara;
  @override
  String get qr;
  @override
  @JsonKey(ignore: true)
  _$$_StructInvItemCopyWith<_$_StructInvItem> get copyWith =>
      throw _privateConstructorUsedError;
}
