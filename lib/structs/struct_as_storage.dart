import 'package:freezed_annotation/freezed_annotation.dart';

part 'struct_as_storage.freezed.dart';
part 'struct_as_storage.g.dart';

@freezed
class StructAsStorage with _$StructAsStorage {
  const factory StructAsStorage({
    required String id,
    required String name
  }) = _StructAsStorage;
  factory StructAsStorage.fromJson(Map<String, dynamic> json) => _$StructAsStorageFromJson(json);
}
