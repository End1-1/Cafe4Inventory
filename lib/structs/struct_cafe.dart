import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_cafe.freezed.dart';
part 'struct_cafe.g.dart';

@freezed
class StructCafe with _$StructCafe {
  const factory StructCafe({
    required String id,
    required String name
}) = _StructCafe;
  factory StructCafe.fromJson(Map<String, dynamic> json) => _$StructCafeFromJson(json);
}