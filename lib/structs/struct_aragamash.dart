import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_aragamash.freezed.dart';
part 'struct_aragamash.g.dart';

@freezed
class StructAragamash with _$StructAragamash {
  const factory StructAragamash({
    required String fmtcode,
    required String fcaption,
    required String ffadepartment,
    required double qty
  }) = _StructAragamash;
  factory StructAragamash.fromJson(Map<String, dynamic> json) => _$StructAragamashFromJson(json);
}
