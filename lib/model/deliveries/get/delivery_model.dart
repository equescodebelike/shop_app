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
    List<DeliveryPoint>? locations,
    String? farmAdress,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}

@freezed
abstract class DeliveryPoint with _$DeliveryPoint {
  const factory DeliveryPoint({
    required String id,
    String? name,
    String? adress,
    String? phone,
    required num lon,
    required num lat,
    String? workHours,
    bool? paymentAllowed,
  }) = _DeliveryPoint;

  factory DeliveryPoint.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPointFromJson(json);
}