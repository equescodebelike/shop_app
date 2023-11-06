import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_model.freezed.dart';

part 'material_model.g.dart';

@freezed
class Material with _$Material {
  const factory Material({
    required int id,
    required String name,
  }) = _Material;

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);
}