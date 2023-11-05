// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_calculated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculatedCartModelImpl _$$CalculatedCartModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatedCartModelImpl(
      promocode: json['promocode'] as String?,
      cityFias: json['city_fias'] as String?,
    );

Map<String, dynamic> _$$CalculatedCartModelImplToJson(
    _$CalculatedCartModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('promocode', instance.promocode);
  writeNotNull('city_fias', instance.cityFias);
  return val;
}
