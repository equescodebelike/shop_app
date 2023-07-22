import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/model/catalog/get/categories/categories_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

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
    @JsonValue('text_color') String? textColor,
    @JsonValue('bg_color') String? bgColor,
    String? text,
    String? picture,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}
