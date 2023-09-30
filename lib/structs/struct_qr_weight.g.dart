// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'struct_qr_weight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StructQrWeight _$$_StructQrWeightFromJson(Map<String, dynamic> json) =>
    _$_StructQrWeight(
      id: json['id'] as int,
      goods_id: json['goods_id'] as int,
      name: json['name'] as String,
      qr: json['qr'] as String,
      qty: (json['qty'] as num).toDouble(),
    );

Map<String, dynamic> _$$_StructQrWeightToJson(_$_StructQrWeight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goods_id': instance.goods_id,
      'name': instance.name,
      'qr': instance.qr,
      'qty': instance.qty,
    };
