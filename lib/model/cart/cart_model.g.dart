// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      price: Decimal.fromJson(json['price'] as String),
      count: json['count'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      oldPrice: json['old_price'] == null
          ? null
          : Decimal.fromJson(json['old_price'] as String),
      applied: json['applied'] as bool?,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'count': instance.count,
      'products': instance.products,
      'old_price': instance.oldPrice,
      'applied': instance.applied,
    };
