// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'struct_store_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StructStoreItem _$$_StructStoreItemFromJson(Map<String, dynamic> json) =>
    _$_StructStoreItem(
      fmtid: json['fmtid'] as int,
      fmtcode: json['fmtcode'] as String,
      fstorage: json['fstorage'] as String,
      fcaption: json['fcaption'] as String,
      qty: (json['qty'] as num).toDouble(),
    );

Map<String, dynamic> _$$_StructStoreItemToJson(_$_StructStoreItem instance) =>
    <String, dynamic>{
      'fmtid': instance.fmtid,
      'fmtcode': instance.fmtcode,
      'fstorage': instance.fstorage,
      'fcaption': instance.fcaption,
      'qty': instance.qty,
    };
