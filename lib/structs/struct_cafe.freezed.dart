// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_cafe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructCafe _$StructCafeFromJson(Map<String, dynamic> json) {
  return _StructCafe.fromJson(json);
}

/// @nodoc
mixin _$StructCafe {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructCafeCopyWith<StructCafe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructCafeCopyWith<$Res> {
  factory $StructCafeCopyWith(
          StructCafe value, $Res Function(StructCafe) then) =
      _$StructCafeCopyWithImpl<$Res, StructCafe>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StructCafeCopyWithImpl<$Res, $Val extends StructCafe>
    implements $StructCafeCopyWith<$Res> {
  _$StructCafeCopyWithImpl(this._value, this._then);

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
abstract class _$$_StructCafeCopyWith<$Res>
    implements $StructCafeCopyWith<$Res> {
  factory _$$_StructCafeCopyWith(
          _$_StructCafe value, $Res Function(_$_StructCafe) then) =
      __$$_StructCafeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_StructCafeCopyWithImpl<$Res>
    extends _$StructCafeCopyWithImpl<$Res, _$_StructCafe>
    implements _$$_StructCafeCopyWith<$Res> {
  __$$_StructCafeCopyWithImpl(
      _$_StructCafe _value, $Res Function(_$_StructCafe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_StructCafe(
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
class _$_StructCafe implements _StructCafe {
  const _$_StructCafe({required this.id, required this.name});

  factory _$_StructCafe.fromJson(Map<String, dynamic> json) =>
      _$$_StructCafeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StructCafe(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructCafe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructCafeCopyWith<_$_StructCafe> get copyWith =>
      __$$_StructCafeCopyWithImpl<_$_StructCafe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructCafeToJson(
      this,
    );
  }
}

abstract class _StructCafe implements StructCafe {
  const factory _StructCafe(
      {required final int id, required final String name}) = _$_StructCafe;

  factory _StructCafe.fromJson(Map<String, dynamic> json) =
      _$_StructCafe.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StructCafeCopyWith<_$_StructCafe> get copyWith =>
      throw _privateConstructorUsedError;
}
