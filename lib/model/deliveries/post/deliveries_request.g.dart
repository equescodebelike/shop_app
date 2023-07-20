// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveries_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveriesRequest _$$_DeliveriesRequestFromJson(Map<String, dynamic> json) =>
    _$_DeliveriesRequest(
      cityFias: json['cityFias'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Map<String, int>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$$_DeliveriesRequestToJson(
        _$_DeliveriesRequest instance) =>
    <String, dynamic>{
      'cityFias': instance.cityFias,
      'products': instance.products,
    };
