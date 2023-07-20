import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_product.freezed.dart';

part 'create_product.g.dart';

@freezed
abstract class CreateProduct with _$CreateProduct {
  const factory CreateProduct({
    required String article,
    required String name,
    required String price,
    String? discount,
    @JsonKey(name: 'picture_url')
    String? pictureUrl,
    @JsonKey(name: 'base64_img')
    String? baseImg,
    String? description,
    @JsonKey(name: 'category_id')
    required int categoryId,
    @JsonKey(name: 'need_buy_to_wholesale')
    int? needBuyToWholesale,
    @JsonKey(name: 'wholesale_discount')
    int? wholesaleDiscount,
  }) = _CreateProduct;

  factory CreateProduct.fromJson(Map<String, dynamic> json) =>
      _$CreateProductFromJson(json);
}