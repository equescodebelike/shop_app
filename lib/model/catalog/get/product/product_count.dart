import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_count.freezed.dart';

part 'product_count.g.dart';

@freezed
class ProductWithCount with _$ProductWithCount {
  factory ProductWithCount({
    @JsonKey(name: "product_id") required int productId,
    required int count,
  }) = _ProductWithCount;

  factory ProductWithCount.fromJson(Map<String, dynamic> json) =>
      _$ProductWithCountFromJson(json);
}
