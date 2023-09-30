import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_qr_weight.freezed.dart';

part 'struct_qr_weight.g.dart';

@freezed
class StructQrWeight with _$StructQrWeight {
  const factory StructQrWeight(
      {required int id,
      required int goods_id,
      required String name,
        required String qr,
      required double qty}) = _StructQrWeight;

  factory StructQrWeight.fromJson(Map<String, dynamic> json) =>
      _$StructQrWeightFromJson(json);
}
