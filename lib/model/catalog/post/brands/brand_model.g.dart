// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Brand _$$_BrandFromJson(Map<String, dynamic> json) => _$_Brand(
      cityFias: json['city_fias'] as String?,
      brand: json['brand'] as String?,
      categoryIds: (json['category_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      search: json['search'] as String?,
      sortBy: json['sort_by'] as String?,
    );

Map<String, dynamic> _$$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      'city_fias': instance.cityFias,
      'brand': instance.brand,
      'category_ids': instance.categoryIds,
      'product_ids': instance.productIds,
      'search': instance.search,
      'sort_by': instance.sortBy,
    };
