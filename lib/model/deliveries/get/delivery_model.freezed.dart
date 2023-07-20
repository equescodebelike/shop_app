// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
mixin _$Delivery {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<DeliveryPoint>? get locations => throw _privateConstructorUsedError;
  String? get farmAdress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res, Delivery>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      String icon,
      List<DeliveryPoint>? locations,
      String? farmAdress});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res, $Val extends Delivery>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? icon = null,
    Object? locations = freezed,
    Object? farmAdress = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPoint>?,
      farmAdress: freezed == farmAdress
          ? _value.farmAdress
          : farmAdress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$$_DeliveryCopyWith(
          _$_Delivery value, $Res Function(_$_Delivery) then) =
      __$$_DeliveryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String type,
      String icon,
      List<DeliveryPoint>? locations,
      String? farmAdress});
}

/// @nodoc
class __$$_DeliveryCopyWithImpl<$Res>
    extends _$DeliveryCopyWithImpl<$Res, _$_Delivery>
    implements _$$_DeliveryCopyWith<$Res> {
  __$$_DeliveryCopyWithImpl(
      _$_Delivery _value, $Res Function(_$_Delivery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? icon = null,
    Object? locations = freezed,
    Object? farmAdress = freezed,
  }) {
    return _then(_$_Delivery(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<DeliveryPoint>?,
      farmAdress: freezed == farmAdress
          ? _value.farmAdress
          : farmAdress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Delivery implements _Delivery {
  const _$_Delivery(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.icon,
      final List<DeliveryPoint>? locations,
      this.farmAdress})
      : _locations = locations;

  factory _$_Delivery.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
  @override
  final String icon;
  final List<DeliveryPoint>? _locations;
  @override
  List<DeliveryPoint>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? farmAdress;

  @override
  String toString() {
    return 'Delivery(id: $id, title: $title, description: $description, type: $type, icon: $icon, locations: $locations, farmAdress: $farmAdress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delivery &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.farmAdress, farmAdress) ||
                other.farmAdress == farmAdress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, type,
      icon, const DeepCollectionEquality().hash(_locations), farmAdress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      __$$_DeliveryCopyWithImpl<_$_Delivery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryToJson(
      this,
    );
  }
}

abstract class _Delivery implements Delivery {
  const factory _Delivery(
      {required final String id,
      required final String title,
      required final String description,
      required final String type,
      required final String icon,
      final List<DeliveryPoint>? locations,
      final String? farmAdress}) = _$_Delivery;

  factory _Delivery.fromJson(Map<String, dynamic> json) = _$_Delivery.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override
  String get icon;
  @override
  List<DeliveryPoint>? get locations;
  @override
  String? get farmAdress;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryCopyWith<_$_Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryPoint _$DeliveryPointFromJson(Map<String, dynamic> json) {
  return _DeliveryPoint.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPoint {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  num get lon => throw _privateConstructorUsedError;
  num get lat => throw _privateConstructorUsedError;
  String? get workHours => throw _privateConstructorUsedError;
  bool? get paymentAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryPointCopyWith<DeliveryPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPointCopyWith<$Res> {
  factory $DeliveryPointCopyWith(
          DeliveryPoint value, $Res Function(DeliveryPoint) then) =
      _$DeliveryPointCopyWithImpl<$Res, DeliveryPoint>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? adress,
      String? phone,
      num lon,
      num lat,
      String? workHours,
      bool? paymentAllowed});
}

/// @nodoc
class _$DeliveryPointCopyWithImpl<$Res, $Val extends DeliveryPoint>
    implements $DeliveryPointCopyWith<$Res> {
  _$DeliveryPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? adress = freezed,
    Object? phone = freezed,
    Object? lon = null,
    Object? lat = null,
    Object? workHours = freezed,
    Object? paymentAllowed = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      workHours: freezed == workHours
          ? _value.workHours
          : workHours // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAllowed: freezed == paymentAllowed
          ? _value.paymentAllowed
          : paymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryPointCopyWith<$Res>
    implements $DeliveryPointCopyWith<$Res> {
  factory _$$_DeliveryPointCopyWith(
          _$_DeliveryPoint value, $Res Function(_$_DeliveryPoint) then) =
      __$$_DeliveryPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? adress,
      String? phone,
      num lon,
      num lat,
      String? workHours,
      bool? paymentAllowed});
}

/// @nodoc
class __$$_DeliveryPointCopyWithImpl<$Res>
    extends _$DeliveryPointCopyWithImpl<$Res, _$_DeliveryPoint>
    implements _$$_DeliveryPointCopyWith<$Res> {
  __$$_DeliveryPointCopyWithImpl(
      _$_DeliveryPoint _value, $Res Function(_$_DeliveryPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? adress = freezed,
    Object? phone = freezed,
    Object? lon = null,
    Object? lat = null,
    Object? workHours = freezed,
    Object? paymentAllowed = freezed,
  }) {
    return _then(_$_DeliveryPoint(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      workHours: freezed == workHours
          ? _value.workHours
          : workHours // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAllowed: freezed == paymentAllowed
          ? _value.paymentAllowed
          : paymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryPoint implements _DeliveryPoint {
  const _$_DeliveryPoint(
      {required this.id,
      this.name,
      this.adress,
      this.phone,
      required this.lon,
      required this.lat,
      this.workHours,
      this.paymentAllowed});

  factory _$_DeliveryPoint.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryPointFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? adress;
  @override
  final String? phone;
  @override
  final num lon;
  @override
  final num lat;
  @override
  final String? workHours;
  @override
  final bool? paymentAllowed;

  @override
  String toString() {
    return 'DeliveryPoint(id: $id, name: $name, adress: $adress, phone: $phone, lon: $lon, lat: $lat, workHours: $workHours, paymentAllowed: $paymentAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryPoint &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.workHours, workHours) ||
                other.workHours == workHours) &&
            (identical(other.paymentAllowed, paymentAllowed) ||
                other.paymentAllowed == paymentAllowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, adress, phone, lon,
      lat, workHours, paymentAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryPointCopyWith<_$_DeliveryPoint> get copyWith =>
      __$$_DeliveryPointCopyWithImpl<_$_DeliveryPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryPointToJson(
      this,
    );
  }
}

abstract class _DeliveryPoint implements DeliveryPoint {
  const factory _DeliveryPoint(
      {required final String id,
      final String? name,
      final String? adress,
      final String? phone,
      required final num lon,
      required final num lat,
      final String? workHours,
      final bool? paymentAllowed}) = _$_DeliveryPoint;

  factory _DeliveryPoint.fromJson(Map<String, dynamic> json) =
      _$_DeliveryPoint.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get adress;
  @override
  String? get phone;
  @override
  num get lon;
  @override
  num get lat;
  @override
  String? get workHours;
  @override
  bool? get paymentAllowed;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryPointCopyWith<_$_DeliveryPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
