// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryImpl _$$DeliveryImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      icon: json['icon'] as String,
      farmAddress: json['farm_address'] as String?,
    );

Map<String, dynamic> _$$DeliveryImplToJson(_$DeliveryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'icon': instance.icon,
      'farm_address': instance.farmAddress,
    };
