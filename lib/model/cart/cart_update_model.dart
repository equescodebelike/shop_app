import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_update_model.freezed.dart';

part 'cart_update_model.g.dart';

@freezed
class CartUpdateModel with _$CartUpdateModel {
  factory CartUpdateModel({
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'count', includeIfNull: false) int? count,
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
  }) = _CartUpdateModel;

  factory CartUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$CartUpdateModelFromJson(json);
}
