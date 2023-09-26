// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'struct_base_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StructBaseItem _$$_StructBaseItemFromJson(Map<String, dynamic> json) =>
    _$_StructBaseItem(
      finvnumcode: json['finvnumcode'] as String,
      fcaption: json['fcaption'] as String,
      fdepart: json['fdepart'] as String,
      fqty: (json['fqty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_StructBaseItemToJson(_$_StructBaseItem instance) =>
    <String, dynamic>{
      'finvnumcode': instance.finvnumcode,
      'fcaption': instance.fcaption,
      'fdepart': instance.fdepart,
      'fqty': instance.fqty,
    };
