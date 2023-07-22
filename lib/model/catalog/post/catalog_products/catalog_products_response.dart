import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/model/catalog/get/product/product_model.dart';

part 'catalog_products_response.freezed.dart';

part 'catalog_products_response.g.dart';

@freezed
class CatalogProductsResponse with _$CatalogProductsResponse {
  factory CatalogProductsResponse({
    required List<Product> results,
    required int count,
    required String? next,
  }) = _CatalogProductsResponse;

  factory CatalogProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductsResponseFromJson(json);
}