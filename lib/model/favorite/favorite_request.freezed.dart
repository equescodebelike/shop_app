// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteRequest _$FavoriteRequestFromJson(Map<String, dynamic> json) {
  return _FavoriteRequest.fromJson(json);
}

/// @nodoc
mixin _$FavoriteRequest {
  int get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteRequestCopyWith<FavoriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteRequestCopyWith<$Res> {
  factory $FavoriteRequestCopyWith(
          FavoriteRequest value, $Res Function(FavoriteRequest) then) =
      _$FavoriteRequestCopyWithImpl<$Res, FavoriteRequest>;
  @useResult
  $Res call({int product});
}

/// @nodoc
class _$FavoriteRequestCopyWithImpl<$Res, $Val extends FavoriteRequest>
    implements $FavoriteRequestCopyWith<$Res> {
  _$FavoriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteRequestImplCopyWith<$Res>
    implements $FavoriteRequestCopyWith<$Res> {
  factory _$$FavoriteRequestImplCopyWith(_$FavoriteRequestImpl value,
          $Res Function(_$FavoriteRequestImpl) then) =
      __$$FavoriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int product});
}

/// @nodoc
class __$$FavoriteRequestImplCopyWithImpl<$Res>
    extends _$FavoriteRequestCopyWithImpl<$Res, _$FavoriteRequestImpl>
    implements _$$FavoriteRequestImplCopyWith<$Res> {
  __$$FavoriteRequestImplCopyWithImpl(
      _$FavoriteRequestImpl _value, $Res Function(_$FavoriteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$FavoriteRequestImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteRequestImpl implements _FavoriteRequest {
  const _$FavoriteRequestImpl({required this.product});

  factory _$FavoriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteRequestImplFromJson(json);

  @override
  final int product;

  @override
  String toString() {
    return 'FavoriteRequest(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteRequestImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteRequestImplCopyWith<_$FavoriteRequestImpl> get copyWith =>
      __$$FavoriteRequestImplCopyWithImpl<_$FavoriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteRequestImplToJson(
      this,
    );
  }
}

abstract class _FavoriteRequest implements FavoriteRequest {
  const factory _FavoriteRequest({required final int product}) =
      _$FavoriteRequestImpl;

  factory _FavoriteRequest.fromJson(Map<String, dynamic> json) =
      _$FavoriteRequestImpl.fromJson;

  @override
  int get product;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteRequestImplCopyWith<_$FavoriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
