import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/model/catalog/get/categories/categories_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    int? id,
    ProductProperty? parameters,
    String? picture,
    Category? categories,
    required List<Badge> badges,
    required String price,
    @JsonKey(name: 'old_price')
    String? oldPrice,
    required String brand,
    String? article,
    String? name,
    String? description,
    bool? avaliable,
    num? discount,
    int? sort,
    num? rating,
    @JsonKey(name: 'reviews_count')
    int? reviewsCount,
    @JsonKey(name: 'need_buy_to_wholesale')
    int? needBuyToWholesale,
    @JsonKey(name: 'wholesale_discount')
    int? wholesaleDiscount,
    // city_fias?
  }) = _ProductModel;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class ProductProperty with _$ProductProperty {
  const factory ProductProperty({
    int? id,
    required String name,
    required String value,
    required int product,
  }) = _ProductProperty;

  factory ProductProperty.fromJson(Map<String, dynamic> json) =>
      _$ProductPropertyFromJson(json);
}

@freezed
abstract class Badge with _$Badge {
  const factory Badge({
    required int id,
    String? textColor,
    String? bgColor,
    String? text,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}