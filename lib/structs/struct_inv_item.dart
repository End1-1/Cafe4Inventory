import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_inv_item.freezed.dart';
part 'struct_inv_item.g.dart';

@freezed
class StructInvItem with _$StructInvItem {
  const factory StructInvItem({
    required int id,
    required int goods_id,
    required String name,
    required double qty,
    required double tara,
    required String qr
}) = _StructInvItem;
  factory StructInvItem.fromJson(Map<String, dynamic> json) => _$StructInvItemFromJson(json);
}
