import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_app/model/cart/cart_product.dart';
import 'package:shop_app/model/catalog/get/product/product_count.dart';

part 'payment_request.freezed.dart';

part 'payment_request.g.dart';

@freezed
abstract class PaymentRequest with _$PaymentRequest {
  const factory PaymentRequest({
    @JsonKey(name: 'city_fias') String? cityFias,
    List<ProductWithCount>? products,
    @JsonKey(name: 'delivery_id') String? deliveryId,
  }) = _PaymentRequest;

  factory PaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestFromJson(json);
}
