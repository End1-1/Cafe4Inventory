import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_storage.freezed.dart';
part 'struct_storage.g.dart';

@freezed
class StructStorage with _$StructStorage {
  const factory StructStorage({
    required String id,
    required String name
}) = _StructStorage;
  factory StructStorage.fromJson(Map<String, dynamic> json) => _$StructStorageFromJson(json);
}