// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_goods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructGoods _$StructGoodsFromJson(Map<String, dynamic> json) {
  return _StructGoods.fromJson(json);
}

/// @nodoc
mixin _$StructGoods {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructGoodsCopyWith<StructGoods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructGoodsCopyWith<$Res> {
  factory $StructGoodsCopyWith(
          StructGoods value, $Res Function(StructGoods) then) =
      _$StructGoodsCopyWithImpl<$Res, StructGoods>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StructGoodsCopyWithImpl<$Res, $Val extends StructGoods>
    implements $StructGoodsCopyWith<$Res> {
  _$StructGoodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructGoodsCopyWith<$Res>
    implements $StructGoodsCopyWith<$Res> {
  factory _$$_StructGoodsCopyWith(
          _$_StructGoods value, $Res Function(_$_StructGoods) then) =
      __$$_StructGoodsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_StructGoodsCopyWithImpl<$Res>
    extends _$StructGoodsCopyWithImpl<$Res, _$_StructGoods>
    implements _$$_StructGoodsCopyWith<$Res> {
  __$$_StructGoodsCopyWithImpl(
      _$_StructGoods _value, $Res Function(_$_StructGoods) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_StructGoods(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructGoods implements _StructGoods {
  const _$_StructGoods({required this.id, required this.name});

  factory _$_StructGoods.fromJson(Map<String, dynamic> json) =>
      _$$_StructGoodsFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StructGoods(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructGoods &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructGoodsCopyWith<_$_StructGoods> get copyWith =>
      __$$_StructGoodsCopyWithImpl<_$_StructGoods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructGoodsToJson(
      this,
    );
  }
}

abstract class _StructGoods implements StructGoods {
  const factory _StructGoods(
      {required final int id, required final String name}) = _$_StructGoods;

  factory _StructGoods.fromJson(Map<String, dynamic> json) =
      _$_StructGoods.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StructGoodsCopyWith<_$_StructGoods> get copyWith =>
      throw _privateConstructorUsedError;
}
