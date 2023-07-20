import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';

part 'brand_model.g.dart';

@freezed
abstract class Brand with _$Brand {
  const factory Brand({
    @JsonKey(name: 'city_fias')
    String? cityFias,
    String? brand,
    @JsonKey(name: 'category_ids')
    List<int>? categoryIds,
    @JsonKey(name: 'product_ids')
    List<int>? productIds,
    String? search,
    @JsonKey(name: 'sort_by')
    String? sortBy,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) =>
      _$BrandFromJson(json);
}