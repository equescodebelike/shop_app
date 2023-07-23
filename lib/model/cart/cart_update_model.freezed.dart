// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartUpdateModel _$CartUpdateModelFromJson(Map<String, dynamic> json) {
  return _CartUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$CartUpdateModel {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'count', includeIfNull: false)
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartUpdateModelCopyWith<CartUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartUpdateModelCopyWith<$Res> {
  factory $CartUpdateModelCopyWith(
          CartUpdateModel value, $Res Function(CartUpdateModel) then) =
      _$CartUpdateModelCopyWithImpl<$Res, CartUpdateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'count', includeIfNull: false) int? count,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class _$CartUpdateModelCopyWithImpl<$Res, $Val extends CartUpdateModel>
    implements $CartUpdateModelCopyWith<$Res> {
  _$CartUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartUpdateModelCopyWith<$Res>
    implements $CartUpdateModelCopyWith<$Res> {
  factory _$$_CartUpdateModelCopyWith(
          _$_CartUpdateModel value, $Res Function(_$_CartUpdateModel) then) =
      __$$_CartUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'count', includeIfNull: false) int? count,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class __$$_CartUpdateModelCopyWithImpl<$Res>
    extends _$CartUpdateModelCopyWithImpl<$Res, _$_CartUpdateModel>
    implements _$$_CartUpdateModelCopyWith<$Res> {
  __$$_CartUpdateModelCopyWithImpl(
      _$_CartUpdateModel _value, $Res Function(_$_CartUpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$_CartUpdateModel(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartUpdateModel implements _CartUpdateModel {
  _$_CartUpdateModel(
      {@JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'count', includeIfNull: false) this.count,
      @JsonKey(name: 'city_fias', includeIfNull: false) this.cityFias});

  factory _$_CartUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartUpdateModelFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'count', includeIfNull: false)
  final int? count;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  final String? cityFias;

  @override
  String toString() {
    return 'CartUpdateModel(productId: $productId, count: $count, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartUpdateModel &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, count, cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartUpdateModelCopyWith<_$_CartUpdateModel> get copyWith =>
      __$$_CartUpdateModelCopyWithImpl<_$_CartUpdateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartUpdateModelToJson(
      this,
    );
  }
}

abstract class _CartUpdateModel implements CartUpdateModel {
  factory _CartUpdateModel(
      {@JsonKey(name: 'product_id') required final int productId,
      @JsonKey(name: 'count', includeIfNull: false) final int? count,
      @JsonKey(name: 'city_fias', includeIfNull: false)
      final String? cityFias}) = _$_CartUpdateModel;

  factory _CartUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_CartUpdateModel.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'count', includeIfNull: false)
  int? get count;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$_CartUpdateModelCopyWith<_$_CartUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
