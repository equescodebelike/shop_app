import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';

@freezed
abstract class Delivery with _$Delivery {
  const factory Delivery({
    required String id,
    required String title,
    required String description,
    required String type,
    required String icon,
    @JsonKey(name: 'farm_address') String? farmAddress,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}