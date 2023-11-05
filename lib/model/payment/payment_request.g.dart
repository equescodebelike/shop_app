// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRequestImpl _$$PaymentRequestImplFromJson(Map<String, dynamic> json) =>
    _$PaymentRequestImpl(
      cityFias: json['city_fias'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductWithCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryId: json['delivery_id'] as String?,
    );

Map<String, dynamic> _$$PaymentRequestImplToJson(
        _$PaymentRequestImpl instance) =>
    <String, dynamic>{
      'city_fias': instance.cityFias,
      'products': instance.products,
      'delivery_id': instance.deliveryId,
    };
