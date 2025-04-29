// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'struct_aragamash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructAragamash _$StructAragamashFromJson(Map<String, dynamic> json) {
  return _StructAragamash.fromJson(json);
}

/// @nodoc
mixin _$StructAragamash {
  String get fmtcode => throw _privateConstructorUsedError;
  String get fcaption => throw _privateConstructorUsedError;
  String get ffadepartment => throw _privateConstructorUsedError;
  double get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructAragamashCopyWith<StructAragamash> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructAragamashCopyWith<$Res> {
  factory $StructAragamashCopyWith(
          StructAragamash value, $Res Function(StructAragamash) then) =
      _$StructAragamashCopyWithImpl<$Res, StructAragamash>;
  @useResult
  $Res call(
      {String fmtcode, String fcaption, String ffadepartment, double qty});
}

/// @nodoc
class _$StructAragamashCopyWithImpl<$Res, $Val extends StructAragamash>
    implements $StructAragamashCopyWith<$Res> {
  _$StructAragamashCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fmtcode = null,
    Object? fcaption = null,
    Object? ffadepartment = null,
    Object? qty = null,
  }) {
    return _then(_value.copyWith(
      fmtcode: null == fmtcode
          ? _value.fmtcode
          : fmtcode // ignore: cast_nullable_to_non_nullable
              as String,
      fcaption: null == fcaption
          ? _value.fcaption
          : fcaption // ignore: cast_nullable_to_non_nullable
              as String,
      ffadepartment: null == ffadepartment
          ? _value.ffadepartment
          : ffadepartment // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StructAragamashCopyWith<$Res>
    implements $StructAragamashCopyWith<$Res> {
  factory _$$_StructAragamashCopyWith(
          _$_StructAragamash value, $Res Function(_$_StructAragamash) then) =
      __$$_StructAragamashCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fmtcode, String fcaption, String ffadepartment, double qty});
}

/// @nodoc
class __$$_StructAragamashCopyWithImpl<$Res>
    extends _$StructAragamashCopyWithImpl<$Res, _$_StructAragamash>
    implements _$$_StructAragamashCopyWith<$Res> {
  __$$_StructAragamashCopyWithImpl(
      _$_StructAragamash _value, $Res Function(_$_StructAragamash) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fmtcode = null,
    Object? fcaption = null,
    Object? ffadepartment = null,
    Object? qty = null,
  }) {
    return _then(_$_StructAragamash(
      fmtcode: null == fmtcode
          ? _value.fmtcode
          : fmtcode // ignore: cast_nullable_to_non_nullable
              as String,
      fcaption: null == fcaption
          ? _value.fcaption
          : fcaption // ignore: cast_nullable_to_non_nullable
              as String,
      ffadepartment: null == ffadepartment
          ? _value.ffadepartment
          : ffadepartment // ignore: cast_nullable_to_non_nullable
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
class _$_StructAragamash implements _StructAragamash {
  const _$_StructAragamash(
      {required this.fmtcode,
      required this.fcaption,
      required this.ffadepartment,
      required this.qty});

  factory _$_StructAragamash.fromJson(Map<String, dynamic> json) =>
      _$$_StructAragamashFromJson(json);

  @override
  final String fmtcode;
  @override
  final String fcaption;
  @override
  final String ffadepartment;
  @override
  final double qty;

  @override
  String toString() {
    return 'StructAragamash(fmtcode: $fmtcode, fcaption: $fcaption, ffadepartment: $ffadepartment, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructAragamash &&
            (identical(other.fmtcode, fmtcode) || other.fmtcode == fmtcode) &&
            (identical(other.fcaption, fcaption) ||
                other.fcaption == fcaption) &&
            (identical(other.ffadepartment, ffadepartment) ||
                other.ffadepartment == ffadepartment) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fmtcode, fcaption, ffadepartment, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StructAragamashCopyWith<_$_StructAragamash> get copyWith =>
      __$$_StructAragamashCopyWithImpl<_$_StructAragamash>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructAragamashToJson(
      this,
    );
  }
}

abstract class _StructAragamash implements StructAragamash {
  const factory _StructAragamash(
      {required final String fmtcode,
      required final String fcaption,
      required final String ffadepartment,
      required final double qty}) = _$_StructAragamash;

  factory _StructAragamash.fromJson(Map<String, dynamic> json) =
      _$_StructAragamash.fromJson;

  @override
  String get fmtcode;
  @override
  String get fcaption;
  @override
  String get ffadepartment;
  @override
  double get qty;
  @override
  @JsonKey(ignore: true)
  _$$_StructAragamashCopyWith<_$_StructAragamash> get copyWith =>
      throw _privateConstructorUsedError;
}
