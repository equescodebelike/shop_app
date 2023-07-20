import 'package:freezed_annotation/freezed_annotation.dart';

part 'deliveries_request.freezed.dart';
part 'deliveries_request.g.dart';

@freezed
abstract class DeliveriesRequest with _$DeliveriesRequest {
  const factory DeliveriesRequest({
    required String cityFias,
    required List<Map<String, int>> products,
  }) = _DeliveriesRequest;

  factory DeliveriesRequest.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesRequestFromJson(json);
}