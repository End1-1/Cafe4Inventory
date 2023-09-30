// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_as_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructAsStorage _$StructAsStorageFromJson(Map<String, dynamic> json) {
  return _StructAsStorage.fromJson(json);
}

/// @nodoc
mixin _$StructAsStorage {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructAsStorageCopyWith<StructAsStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructAsStorageCopyWith<$Res> {
  factory $StructAsStorageCopyWith(
          StructAsStorage value, $Res Function(StructAsStorage) then) =
      _$StructAsStorageCopyWithImpl<$Res, StructAsStorage>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$StructAsStorageCopyWithImpl<$Res, $Val extends StructAsStorage>
    implements $StructAsStorageCopyWith<$Res> {
  _$StructAsStorageCopyWithImpl(this._value, this._then);

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
abstract class _$$_StructAsStorageCopyWith<$Res>
    implements $StructAsStorageCopyWith<$Res> {
  factory _$$_StructAsStorageCopyWith(
          _$_StructAsStorage value, $Res Function(_$_StructAsStorage) then) =
      __$$_StructAsStorageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_StructAsStorageCopyWithImpl<$Res>
    extends _$StructAsStorageCopyWithImpl<$Res, _$_StructAsStorage>
    implements _$$_StructAsStorageCopyWith<$Res> {
  __$$_StructAsStorageCopyWithImpl(
      _$_StructAsStorage _value, $Res Function(_$_StructAsStorage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_StructAsStorage(
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
class _$_StructAsStorage implements _StructAsStorage {
  const _$_StructAsStorage({required this.id, required this.name});

  factory _$_StructAsStorage.fromJson(Map<String, dynamic> json) =>
      _$$_StructAsStorageFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'StructAsStorage(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructAsStorage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructAsStorageCopyWith<_$_StructAsStorage> get copyWith =>
      __$$_StructAsStorageCopyWithImpl<_$_StructAsStorage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructAsStorageToJson(
      this,
    );
  }
}

abstract class _StructAsStorage implements StructAsStorage {
  const factory _StructAsStorage(
      {required final String id,
      required final String name}) = _$_StructAsStorage;

  factory _StructAsStorage.fromJson(Map<String, dynamic> json) =
      _$_StructAsStorage.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StructAsStorageCopyWith<_$_StructAsStorage> get copyWith =>
      throw _privateConstructorUsedError;
}
