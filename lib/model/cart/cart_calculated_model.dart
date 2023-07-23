import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_calculated_model.freezed.dart';

part 'cart_calculated_model.g.dart';

@freezed
class CalculatedCartModel with _$CalculatedCartModel {
  factory CalculatedCartModel({
    @JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
    @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias,
  }) = _CalculatedCartModel;

  factory CalculatedCartModel.fromJson(Map<String, dynamic> json) =>
      _$CalculatedCartModelFromJson(json);
}
