// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_amt_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructAmtStorage _$StructAmtStorageFromJson(Map<String, dynamic> json) {
  return _StructAmtStorage.fromJson(json);
}

/// @nodoc
mixin _$StructAmtStorage {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructAmtStorageCopyWith<StructAmtStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructAmtStorageCopyWith<$Res> {
  factory $StructAmtStorageCopyWith(
          StructAmtStorage value, $Res Function(StructAmtStorage) then) =
      _$StructAmtStorageCopyWithImpl<$Res, StructAmtStorage>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$StructAmtStorageCopyWithImpl<$Res, $Val extends StructAmtStorage>
    implements $StructAmtStorageCopyWith<$Res> {
  _$StructAmtStorageCopyWithImpl(this._value, this._then);

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
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructAmtStorageCopyWith<$Res>
    implements $StructAmtStorageCopyWith<$Res> {
  factory _$$_StructAmtStorageCopyWith(
          _$_StructAmtStorage value, $Res Function(_$_StructAmtStorage) then) =
      __$$_StructAmtStorageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_StructAmtStorageCopyWithImpl<$Res>
    extends _$StructAmtStorageCopyWithImpl<$Res, _$_StructAmtStorage>
    implements _$$_StructAmtStorageCopyWith<$Res> {
  __$$_StructAmtStorageCopyWithImpl(
      _$_StructAmtStorage _value, $Res Function(_$_StructAmtStorage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_StructAmtStorage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructAmtStorage implements _StructAmtStorage {
  const _$_StructAmtStorage({required this.id, required this.name});

  factory _$_StructAmtStorage.fromJson(Map<String, dynamic> json) =>
      _$$_StructAmtStorageFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'StructAmtStorage(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructAmtStorage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructAmtStorageCopyWith<_$_StructAmtStorage> get copyWith =>
      __$$_StructAmtStorageCopyWithImpl<_$_StructAmtStorage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructAmtStorageToJson(
      this,
    );
  }
}

abstract class _StructAmtStorage implements StructAmtStorage {
  const factory _StructAmtStorage(
      {required final String id,
      required final String name}) = _$_StructAmtStorage;

  factory _StructAmtStorage.fromJson(Map<String, dynamic> json) =
      _$_StructAmtStorage.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StructAmtStorageCopyWith<_$_StructAmtStorage> get copyWith =>
      throw _privateConstructorUsedError;
}
