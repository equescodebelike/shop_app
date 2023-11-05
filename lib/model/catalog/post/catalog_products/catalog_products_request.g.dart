// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_products_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogProductsRequestImpl _$$CatalogProductsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CatalogProductsRequestImpl(
      cityFias: json['city_fias'] as String?,
      sortBy: json['sort_by'] as String?,
      search: json['search'] as String?,
      brand: json['brand'] as String?,
      categoryIds: json['category_ids'] as List<dynamic>?,
      productIds: json['product_ids'] as List<dynamic>?,
    );

Map<String, dynamic> _$$CatalogProductsRequestImplToJson(
    _$CatalogProductsRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city_fias', instance.cityFias);
  writeNotNull('sort_by', instance.sortBy);
  writeNotNull('search', instance.search);
  writeNotNull('brand', instance.brand);
  writeNotNull('category_ids', instance.categoryIds);
  writeNotNull('product_ids', instance.productIds);
  return val;
}
