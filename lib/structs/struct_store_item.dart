import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_store_item.freezed.dart';
part 'struct_store_item.g.dart';

@freezed
class StructStoreItem with _$StructStoreItem {
  const StructStoreItem._();
  const factory StructStoreItem({
    required int fmtid,
    required String fmtcode,
    required String fstorage,
    required String fcaption,
    required double qty
  }) = _StructStoreItem;
  factory StructStoreItem.fromJson(Map<String, dynamic> json) => _$StructStoreItemFromJson(json);

}
