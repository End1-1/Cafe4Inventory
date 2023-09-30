import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_goods.freezed.dart';

part 'struct_goods.g.dart';

@freezed
class StructGoods with _$StructGoods {
  const factory StructGoods({
    required int id,
    required String name
}) = _StructGoods;
  factory StructGoods.fromJson(Map<String, dynamic> json) => _$StructGoodsFromJson(json);
}