import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_products.freezed.dart';

part 'catalog_products.g.dart';

@freezed
class ProductsSerializerRequest with _$ProductsSerializerRequest {
  const factory ProductsSerializerRequest(
      {@JsonKey(name: 'city_fias') String? cityFias,
        String? brand,
        @JsonKey(name: 'category_ids') List<int>? categoryIds,
        @JsonKey(name: 'product_ids') List<int>? productIds,
        String? search,
        @JsonKey(name: 'sort_by') SortByEnum? sortBy}) =
  _ProductsSerializerRequest;

  factory ProductsSerializerRequest.fromJson(Map<String, Object?> json) =>
      _$ProductsSerializerRequestFromJson(json);
}

enum SortByEnum {
  @JsonValue('popularity')
  popularity,
  @JsonValue('asc_price')
  ascPrice,
  @JsonValue('desc_price')
  descPrice,
  @JsonValue('asc_discount')
  ascDiscount,
  @JsonValue('desc_discount')
  descDiscount,
}


@freezed
class Products with _$Products {
  const factory Products({
    required int count,
    String? next,
    String? previous,
    required List<Product> results,

  }) = _Products;

  factory Products.fromJson(Map<String, Object?> json) =>
      _$ProductsFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String picture,
    required List<Badge> badges,
    required String price,
    @JsonKey(name: "old_price") String? oldPrice,
    required String name,
    String? article,
    double? rating,
    @JsonKey(name: "reviews_count") int? reviewsCount,
    @JsonKey(name: "city_fias") String? cityFias,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}


@freezed
class Badge with _$Badge {
  const factory Badge({
    required int id,
    @JsonValue('text_color') String? textColor,
    @JsonValue('bg_color') String? bgColor,
    String? text,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, Object?> json) =>
      _$BadgeFromJson(json);
}