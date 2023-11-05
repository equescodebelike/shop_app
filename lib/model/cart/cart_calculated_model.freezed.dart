// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_calculated_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalculatedCartModel _$CalculatedCartModelFromJson(Map<String, dynamic> json) {
  return _CalculatedCartModel.fromJson(json);
}

/// @nodoc
mixin _$CalculatedCartModel {
  @JsonKey(name: 'promocode', includeIfNull: false)
  String? get promocode => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatedCartModelCopyWith<CalculatedCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatedCartModelCopyWith<$Res> {
  factory $CalculatedCartModelCopyWith(
          CalculatedCartModel value, $Res Function(CalculatedCartModel) then) =
      _$CalculatedCartModelCopyWithImpl<$Res, CalculatedCartModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class _$CalculatedCartModelCopyWithImpl<$Res, $Val extends CalculatedCartModel>
    implements $CalculatedCartModelCopyWith<$Res> {
  _$CalculatedCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_value.copyWith(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatedCartModelImplCopyWith<$Res>
    implements $CalculatedCartModelCopyWith<$Res> {
  factory _$$CalculatedCartModelImplCopyWith(_$CalculatedCartModelImpl value,
          $Res Function(_$CalculatedCartModelImpl) then) =
      __$$CalculatedCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'promocode', includeIfNull: false) String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) String? cityFias});
}

/// @nodoc
class __$$CalculatedCartModelImplCopyWithImpl<$Res>
    extends _$CalculatedCartModelCopyWithImpl<$Res, _$CalculatedCartModelImpl>
    implements _$$CalculatedCartModelImplCopyWith<$Res> {
  __$$CalculatedCartModelImplCopyWithImpl(_$CalculatedCartModelImpl _value,
      $Res Function(_$CalculatedCartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promocode = freezed,
    Object? cityFias = freezed,
  }) {
    return _then(_$CalculatedCartModelImpl(
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculatedCartModelImpl implements _CalculatedCartModel {
  _$CalculatedCartModelImpl(
      {@JsonKey(name: 'promocode', includeIfNull: false) this.promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false) this.cityFias});

  factory _$CalculatedCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculatedCartModelImplFromJson(json);

  @override
  @JsonKey(name: 'promocode', includeIfNull: false)
  final String? promocode;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  final String? cityFias;

  @override
  String toString() {
    return 'CalculatedCartModel(promocode: $promocode, cityFias: $cityFias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatedCartModelImpl &&
            (identical(other.promocode, promocode) ||
                other.promocode == promocode) &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, promocode, cityFias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatedCartModelImplCopyWith<_$CalculatedCartModelImpl> get copyWith =>
      __$$CalculatedCartModelImplCopyWithImpl<_$CalculatedCartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatedCartModelImplToJson(
      this,
    );
  }
}

abstract class _CalculatedCartModel implements CalculatedCartModel {
  factory _CalculatedCartModel(
      {@JsonKey(name: 'promocode', includeIfNull: false)
      final String? promocode,
      @JsonKey(name: 'city_fias', includeIfNull: false)
      final String? cityFias}) = _$CalculatedCartModelImpl;

  factory _CalculatedCartModel.fromJson(Map<String, dynamic> json) =
      _$CalculatedCartModelImpl.fromJson;

  @override
  @JsonKey(name: 'promocode', includeIfNull: false)
  String? get promocode;
  @override
  @JsonKey(name: 'city_fias', includeIfNull: false)
  String? get cityFias;
  @override
  @JsonKey(ignore: true)
  _$$CalculatedCartModelImplCopyWith<_$CalculatedCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
