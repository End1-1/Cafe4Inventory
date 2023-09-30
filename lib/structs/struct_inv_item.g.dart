// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'struct_inv_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StructInvItem _$$_StructInvItemFromJson(Map<String, dynamic> json) =>
    _$_StructInvItem(
      id: json['id'] as int,
      goods_id: json['goods_id'] as int,
      name: json['name'] as String,
      qty: (json['qty'] as num).toDouble(),
      tara: (json['tara'] as num).toDouble(),
      qr: json['qr'] as String,
    );

Map<String, dynamic> _$$_StructInvItemToJson(_$_StructInvItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goods_id': instance.goods_id,
      'name': instance.name,
      'qty': instance.qty,
      'tara': instance.tara,
      'qr': instance.qr,
    };
