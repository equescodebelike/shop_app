import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';

part 'payment_model.g.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    required String id,
    required String title,
    required String type,
    String? description,
    String? icon,
    String? link,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
