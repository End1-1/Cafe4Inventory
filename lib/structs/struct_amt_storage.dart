import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_amt_storage.freezed.dart';
part 'struct_amt_storage.g.dart';

@freezed
class StructAmtStorage with _$StructAmtStorage {
  const factory StructAmtStorage({
    required String id,
    required String name
}) = _StructAmtStorage;
  factory StructAmtStorage.fromJson(Map<String, dynamic> json) => _$StructAmtStorageFromJson(json);
}
