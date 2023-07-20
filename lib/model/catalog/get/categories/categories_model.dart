import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';

part 'categories_model.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    String? picture,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}