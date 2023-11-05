// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductPropertyImpl _$$ProductPropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPropertyImpl(
      id: json['id'] as int?,
      name: json['name'] as String,
      value: json['value'] as String,
      product: json['product'] as int,
    );

Map<String, dynamic> _$$ProductPropertyImplToJson(
        _$ProductPropertyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'product': instance.product,
    };

_$BadgeImpl _$$BadgeImplFromJson(Map<String, dynamic> json) => _$BadgeImpl(
      id: json['id'] as int,
      textColor: json['textColor'] as String?,
      bgColor: json['bgColor'] as String?,
      text: json['text'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$BadgeImplToJson(_$BadgeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'textColor': instance.textColor,
      'bgColor': instance.bgColor,
      'text': instance.text,
      'picture': instance.picture,
    };
