// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductProperty _$ProductPropertyFromJson(Map<String, dynamic> json) {
  return _ProductProperty.fromJson(json);
}

/// @nodoc
mixin _$ProductProperty {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPropertyCopyWith<ProductProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPropertyCopyWith<$Res> {
  factory $ProductPropertyCopyWith(
          ProductProperty value, $Res Function(ProductProperty) then) =
      _$ProductPropertyCopyWithImpl<$Res, ProductProperty>;
  @useResult
  $Res call({int? id, String name, String value, int product});
}

/// @nodoc
class _$ProductPropertyCopyWithImpl<$Res, $Val extends ProductProperty>
    implements $ProductPropertyCopyWith<$Res> {
  _$ProductPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? value = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPropertyImplCopyWith<$Res>
    implements $ProductPropertyCopyWith<$Res> {
  factory _$$ProductPropertyImplCopyWith(_$ProductPropertyImpl value,
          $Res Function(_$ProductPropertyImpl) then) =
      __$$ProductPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, String value, int product});
}

/// @nodoc
class __$$ProductPropertyImplCopyWithImpl<$Res>
    extends _$ProductPropertyCopyWithImpl<$Res, _$ProductPropertyImpl>
    implements _$$ProductPropertyImplCopyWith<$Res> {
  __$$ProductPropertyImplCopyWithImpl(
      _$ProductPropertyImpl _value, $Res Function(_$ProductPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? value = null,
    Object? product = null,
  }) {
    return _then(_$ProductPropertyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPropertyImpl implements _ProductProperty {
  const _$ProductPropertyImpl(
      {this.id,
      required this.name,
      required this.value,
      required this.product});

  factory _$ProductPropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPropertyImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String value;
  @override
  final int product;

  @override
  String toString() {
    return 'ProductProperty(id: $id, name: $name, value: $value, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPropertyImplCopyWith<_$ProductPropertyImpl> get copyWith =>
      __$$ProductPropertyImplCopyWithImpl<_$ProductPropertyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPropertyImplToJson(
      this,
    );
  }
}

abstract class _ProductProperty implements ProductProperty {
  const factory _ProductProperty(
      {final int? id,
      required final String name,
      required final String value,
      required final int product}) = _$ProductPropertyImpl;

  factory _ProductProperty.fromJson(Map<String, dynamic> json) =
      _$ProductPropertyImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get value;
  @override
  int get product;
  @override
  @JsonKey(ignore: true)
  _$$ProductPropertyImplCopyWith<_$ProductPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return _Badge.fromJson(json);
}

/// @nodoc
mixin _$Badge {
  int get id => throw _privateConstructorUsedError;
  @JsonValue('text_color')
  String? get textColor => throw _privateConstructorUsedError;
  @JsonValue('bg_color')
  String? get bgColor => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCopyWith<Badge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCopyWith<$Res> {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) then) =
      _$BadgeCopyWithImpl<$Res, Badge>;
  @useResult
  $Res call(
      {int id,
      @JsonValue('text_color') String? textColor,
      @JsonValue('bg_color') String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class _$BadgeCopyWithImpl<$Res, $Val extends Badge>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeImplCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$$BadgeImplCopyWith(
          _$BadgeImpl value, $Res Function(_$BadgeImpl) then) =
      __$$BadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonValue('text_color') String? textColor,
      @JsonValue('bg_color') String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class __$$BadgeImplCopyWithImpl<$Res>
    extends _$BadgeCopyWithImpl<$Res, _$BadgeImpl>
    implements _$$BadgeImplCopyWith<$Res> {
  __$$BadgeImplCopyWithImpl(
      _$BadgeImpl _value, $Res Function(_$BadgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$BadgeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeImpl implements _Badge {
  const _$BadgeImpl(
      {required this.id,
      @JsonValue('text_color') this.textColor,
      @JsonValue('bg_color') this.bgColor,
      this.text,
      this.picture});

  factory _$BadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeImplFromJson(json);

  @override
  final int id;
  @override
  @JsonValue('text_color')
  final String? textColor;
  @override
  @JsonValue('bg_color')
  final String? bgColor;
  @override
  final String? text;
  @override
  final String? picture;

  @override
  String toString() {
    return 'Badge(id: $id, textColor: $textColor, bgColor: $bgColor, text: $text, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, textColor, bgColor, text, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeImplCopyWith<_$BadgeImpl> get copyWith =>
      __$$BadgeImplCopyWithImpl<_$BadgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeImplToJson(
      this,
    );
  }
}

abstract class _Badge implements Badge {
  const factory _Badge(
      {required final int id,
      @JsonValue('text_color') final String? textColor,
      @JsonValue('bg_color') final String? bgColor,
      final String? text,
      final String? picture}) = _$BadgeImpl;

  factory _Badge.fromJson(Map<String, dynamic> json) = _$BadgeImpl.fromJson;

  @override
  int get id;
  @override
  @JsonValue('text_color')
  String? get textColor;
  @override
  @JsonValue('bg_color')
  String? get bgColor;
  @override
  String? get text;
  @override
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$$BadgeImplCopyWith<_$BadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
