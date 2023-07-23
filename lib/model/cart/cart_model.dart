import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_product.dart';

part 'cart_model.freezed.dart';

part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  factory CartModel({
    @JsonKey(name: 'price') required Decimal price,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'products') required List<CartProduct> products,
    @JsonKey(name: 'old_price') Decimal? oldPrice,
    @JsonKey(name: 'applied') bool? applied,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
