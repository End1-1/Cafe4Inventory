import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_base_item.freezed.dart';
part 'struct_base_item.g.dart';

@freezed
class StructBaseItem with _$StructBaseItem {
  const StructBaseItem._();
  const factory StructBaseItem({
    required String finvnumcode,
    required String fcaption,
    required String fdepart,
    required double? fqty
}) = _StructBaseItem;
  factory StructBaseItem.fromJson(Map<String, dynamic> json) => _$StructBaseItemFromJson(json);

  double qty() {
    return fqty ?? 1;
  }
}
