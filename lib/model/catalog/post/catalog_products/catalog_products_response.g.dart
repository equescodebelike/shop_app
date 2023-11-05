// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogProductsResponseImpl _$$CatalogProductsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogProductsResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: json['count'] as int,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$CatalogProductsResponseImplToJson(
        _$CatalogProductsResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'count': instance.count,
      'next': instance.next,
    };
