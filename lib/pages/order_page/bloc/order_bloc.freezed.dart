// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderState {
  List<ProductWithCount> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)
        deliveriesLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        paymentsLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        order,
    required TResult Function(List<ProductWithCount> products) orderCreated,
    required TResult Function(List<ProductWithCount> products, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)?
        deliveriesLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        paymentsLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        order,
    TResult? Function(List<ProductWithCount> products)? orderCreated,
    TResult? Function(List<ProductWithCount> products, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate, String? deliveryName)?
        deliveriesLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        paymentsLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        order,
    TResult Function(List<ProductWithCount> products)? orderCreated,
    TResult Function(List<ProductWithCount> products, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveriesOrderState value) deliveriesLoaded,
    required TResult Function(PaymentsOrderState value) paymentsLoaded,
    required TResult Function(CreateOrderState value) order,
    required TResult Function(CreatedOrderState value) orderCreated,
    required TResult Function(ErrorOrderState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult? Function(PaymentsOrderState value)? paymentsLoaded,
    TResult? Function(CreateOrderState value)? order,
    TResult? Function(CreatedOrderState value)? orderCreated,
    TResult? Function(ErrorOrderState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult Function(PaymentsOrderState value)? paymentsLoaded,
    TResult Function(CreateOrderState value)? order,
    TResult Function(CreatedOrderState value)? orderCreated,
    TResult Function(ErrorOrderState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call({List<ProductWithCount> products});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitOrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$InitOrderStateImplCopyWith(_$InitOrderStateImpl value,
          $Res Function(_$InitOrderStateImpl) then) =
      __$$InitOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductWithCount> products});
}

/// @nodoc
class __$$InitOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitOrderStateImpl>
    implements _$$InitOrderStateImplCopyWith<$Res> {
  __$$InitOrderStateImplCopyWithImpl(
      _$InitOrderStateImpl _value, $Res Function(_$InitOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$InitOrderStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
    ));
  }
}

/// @nodoc

class _$InitOrderStateImpl extends InitOrderState with DiagnosticableTreeMixin {
  const _$InitOrderStateImpl({required final List<ProductWithCount> products})
      : _products = products,
        super._();

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState.init(products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState.init'))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitOrderStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitOrderStateImplCopyWith<_$InitOrderStateImpl> get copyWith =>
      __$$InitOrderStateImplCopyWithImpl<_$InitOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)
        deliveriesLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        paymentsLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        order,
    required TResult Function(List<ProductWithCount> products) orderCreated,
    required TResult Function(List<ProductWithCount> products, String message)
        error,
  }) {
    return init(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)?
        deliveriesLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        paymentsLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        order,
    TResult? Function(List<ProductWithCount> products)? orderCreated,
    TResult? Function(List<ProductWithCount> products, String message)? error,
  }) {
    return init?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate, String? deliveryName)?
        deliveriesLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        paymentsLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        order,
    TResult Function(List<ProductWithCount> products)? orderCreated,
    TResult Function(List<ProductWithCount> products, String message)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveriesOrderState value) deliveriesLoaded,
    required TResult Function(PaymentsOrderState value) paymentsLoaded,
    required TResult Function(CreateOrderState value) order,
    required TResult Function(CreatedOrderState value) orderCreated,
    required TResult Function(ErrorOrderState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult? Function(PaymentsOrderState value)? paymentsLoaded,
    TResult? Function(CreateOrderState value)? order,
    TResult? Function(CreatedOrderState value)? orderCreated,
    TResult? Function(ErrorOrderState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult Function(PaymentsOrderState value)? paymentsLoaded,
    TResult Function(CreateOrderState value)? order,
    TResult Function(CreatedOrderState value)? orderCreated,
    TResult Function(ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitOrderState extends OrderState {
  const factory InitOrderState(
      {required final List<ProductWithCount> products}) = _$InitOrderStateImpl;
  const InitOrderState._() : super._();

  @override
  List<ProductWithCount> get products;
  @override
  @JsonKey(ignore: true)
  _$$InitOrderStateImplCopyWith<_$InitOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliveriesOrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$DeliveriesOrderStateImplCopyWith(_$DeliveriesOrderStateImpl value,
          $Res Function(_$DeliveriesOrderStateImpl) then) =
      __$$DeliveriesOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductWithCount> products,
      List<Delivery> deliveries,
      Delivery delivery,
      DateTime deliveryDate,
      String? deliveryName});

  $DeliveryCopyWith<$Res> get delivery;
}

/// @nodoc
class __$$DeliveriesOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$DeliveriesOrderStateImpl>
    implements _$$DeliveriesOrderStateImplCopyWith<$Res> {
  __$$DeliveriesOrderStateImplCopyWithImpl(_$DeliveriesOrderStateImpl _value,
      $Res Function(_$DeliveriesOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveries = null,
    Object? delivery = null,
    Object? deliveryDate = null,
    Object? deliveryName = freezed,
  }) {
    return _then(_$DeliveriesOrderStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      deliveries: null == deliveries
          ? _value._deliveries
          : deliveries // ignore: cast_nullable_to_non_nullable
              as List<Delivery>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryName: freezed == deliveryName
          ? _value.deliveryName
          : deliveryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }
}

/// @nodoc

class _$DeliveriesOrderStateImpl extends DeliveriesOrderState
    with DiagnosticableTreeMixin {
  const _$DeliveriesOrderStateImpl(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required this.delivery,
      required this.deliveryDate,
      this.deliveryName})
      : _products = products,
        _deliveries = deliveries,
        super._();

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Delivery> _deliveries;
  @override
  List<Delivery> get deliveries {
    if (_deliveries is EqualUnmodifiableListView) return _deliveries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveries);
  }

  @override
  final Delivery delivery;
  @override
  final DateTime deliveryDate;
  @override
  final String? deliveryName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState.deliveriesLoaded(products: $products, deliveries: $deliveries, delivery: $delivery, deliveryDate: $deliveryDate, deliveryName: $deliveryName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState.deliveriesLoaded'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('deliveries', deliveries))
      ..add(DiagnosticsProperty('delivery', delivery))
      ..add(DiagnosticsProperty('deliveryDate', deliveryDate))
      ..add(DiagnosticsProperty('deliveryName', deliveryName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveriesOrderStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._deliveries, _deliveries) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryName, deliveryName) ||
                other.deliveryName == deliveryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_deliveries),
      delivery,
      deliveryDate,
      deliveryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveriesOrderStateImplCopyWith<_$DeliveriesOrderStateImpl>
      get copyWith =>
          __$$DeliveriesOrderStateImplCopyWithImpl<_$DeliveriesOrderStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)
        deliveriesLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        paymentsLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        order,
    required TResult Function(List<ProductWithCount> products) orderCreated,
    required TResult Function(List<ProductWithCount> products, String message)
        error,
  }) {
    return deliveriesLoaded(
        products, deliveries, delivery, deliveryDate, deliveryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)?
        deliveriesLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        paymentsLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        order,
    TResult? Function(List<ProductWithCount> products)? orderCreated,
    TResult? Function(List<ProductWithCount> products, String message)? error,
  }) {
    return deliveriesLoaded?.call(
        products, deliveries, delivery, deliveryDate, deliveryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate, String? deliveryName)?
        deliveriesLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        paymentsLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        order,
    TResult Function(List<ProductWithCount> products)? orderCreated,
    TResult Function(List<ProductWithCount> products, String message)? error,
    required TResult orElse(),
  }) {
    if (deliveriesLoaded != null) {
      return deliveriesLoaded(
          products, deliveries, delivery, deliveryDate, deliveryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveriesOrderState value) deliveriesLoaded,
    required TResult Function(PaymentsOrderState value) paymentsLoaded,
    required TResult Function(CreateOrderState value) order,
    required TResult Function(CreatedOrderState value) orderCreated,
    required TResult Function(ErrorOrderState value) error,
  }) {
    return deliveriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult? Function(PaymentsOrderState value)? paymentsLoaded,
    TResult? Function(CreateOrderState value)? order,
    TResult? Function(CreatedOrderState value)? orderCreated,
    TResult? Function(ErrorOrderState value)? error,
  }) {
    return deliveriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult Function(PaymentsOrderState value)? paymentsLoaded,
    TResult Function(CreateOrderState value)? order,
    TResult Function(CreatedOrderState value)? orderCreated,
    TResult Function(ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (deliveriesLoaded != null) {
      return deliveriesLoaded(this);
    }
    return orElse();
  }
}

abstract class DeliveriesOrderState extends OrderState {
  const factory DeliveriesOrderState(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required final Delivery delivery,
      required final DateTime deliveryDate,
      final String? deliveryName}) = _$DeliveriesOrderStateImpl;
  const DeliveriesOrderState._() : super._();

  @override
  List<ProductWithCount> get products;
  List<Delivery> get deliveries;
  Delivery get delivery;
  DateTime get deliveryDate;
  String? get deliveryName;
  @override
  @JsonKey(ignore: true)
  _$$DeliveriesOrderStateImplCopyWith<_$DeliveriesOrderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentsOrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$PaymentsOrderStateImplCopyWith(_$PaymentsOrderStateImpl value,
          $Res Function(_$PaymentsOrderStateImpl) then) =
      __$$PaymentsOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductWithCount> products,
      List<Delivery> deliveries,
      Delivery delivery,
      List<Payment> payments,
      Payment payment});

  $DeliveryCopyWith<$Res> get delivery;
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$PaymentsOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$PaymentsOrderStateImpl>
    implements _$$PaymentsOrderStateImplCopyWith<$Res> {
  __$$PaymentsOrderStateImplCopyWithImpl(_$PaymentsOrderStateImpl _value,
      $Res Function(_$PaymentsOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveries = null,
    Object? delivery = null,
    Object? payments = null,
    Object? payment = null,
  }) {
    return _then(_$PaymentsOrderStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      deliveries: null == deliveries
          ? _value._deliveries
          : deliveries // ignore: cast_nullable_to_non_nullable
              as List<Delivery>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$PaymentsOrderStateImpl extends PaymentsOrderState
    with DiagnosticableTreeMixin {
  const _$PaymentsOrderStateImpl(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required this.delivery,
      required final List<Payment> payments,
      required this.payment})
      : _products = products,
        _deliveries = deliveries,
        _payments = payments,
        super._();

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Delivery> _deliveries;
  @override
  List<Delivery> get deliveries {
    if (_deliveries is EqualUnmodifiableListView) return _deliveries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveries);
  }

  @override
  final Delivery delivery;
  final List<Payment> _payments;
  @override
  List<Payment> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState.paymentsLoaded(products: $products, deliveries: $deliveries, delivery: $delivery, payments: $payments, payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState.paymentsLoaded'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('deliveries', deliveries))
      ..add(DiagnosticsProperty('delivery', delivery))
      ..add(DiagnosticsProperty('payments', payments))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsOrderStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._deliveries, _deliveries) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_deliveries),
      delivery,
      const DeepCollectionEquality().hash(_payments),
      payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsOrderStateImplCopyWith<_$PaymentsOrderStateImpl> get copyWith =>
      __$$PaymentsOrderStateImplCopyWithImpl<_$PaymentsOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)
        deliveriesLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        paymentsLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        order,
    required TResult Function(List<ProductWithCount> products) orderCreated,
    required TResult Function(List<ProductWithCount> products, String message)
        error,
  }) {
    return paymentsLoaded(products, deliveries, delivery, payments, payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)?
        deliveriesLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        paymentsLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        order,
    TResult? Function(List<ProductWithCount> products)? orderCreated,
    TResult? Function(List<ProductWithCount> products, String message)? error,
  }) {
    return paymentsLoaded?.call(
        products, deliveries, delivery, payments, payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate, String? deliveryName)?
        deliveriesLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        paymentsLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        order,
    TResult Function(List<ProductWithCount> products)? orderCreated,
    TResult Function(List<ProductWithCount> products, String message)? error,
    required TResult orElse(),
  }) {
    if (paymentsLoaded != null) {
      return paymentsLoaded(products, deliveries, delivery, payments, payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveriesOrderState value) deliveriesLoaded,
    required TResult Function(PaymentsOrderState value) paymentsLoaded,
    required TResult Function(CreateOrderState value) order,
    required TResult Function(CreatedOrderState value) orderCreated,
    required TResult Function(ErrorOrderState value) error,
  }) {
    return paymentsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult? Function(PaymentsOrderState value)? paymentsLoaded,
    TResult? Function(CreateOrderState value)? order,
    TResult? Function(CreatedOrderState value)? orderCreated,
    TResult? Function(ErrorOrderState value)? error,
  }) {
    return paymentsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult Function(PaymentsOrderState value)? paymentsLoaded,
    TResult Function(CreateOrderState value)? order,
    TResult Function(CreatedOrderState value)? orderCreated,
    TResult Function(ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (paymentsLoaded != null) {
      return paymentsLoaded(this);
    }
    return orElse();
  }
}

abstract class PaymentsOrderState extends OrderState {
  const factory PaymentsOrderState(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required final Delivery delivery,
      required final List<Payment> payments,
      required final Payment payment}) = _$PaymentsOrderStateImpl;
  const PaymentsOrderState._() : super._();

  @override
  List<ProductWithCount> get products;
  List<Delivery> get deliveries;
  Delivery get delivery;
  List<Payment> get payments;
  Payment get payment;
  @override
  @JsonKey(ignore: true)
  _$$PaymentsOrderStateImplCopyWith<_$PaymentsOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$CreateOrderStateImplCopyWith(_$CreateOrderStateImpl value,
          $Res Function(_$CreateOrderStateImpl) then) =
      __$$CreateOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductWithCount> products,
      List<Delivery> deliveries,
      Delivery delivery,
      List<Payment> payments,
      Payment payment});

  $DeliveryCopyWith<$Res> get delivery;
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$CreateOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$CreateOrderStateImpl>
    implements _$$CreateOrderStateImplCopyWith<$Res> {
  __$$CreateOrderStateImplCopyWithImpl(_$CreateOrderStateImpl _value,
      $Res Function(_$CreateOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveries = null,
    Object? delivery = null,
    Object? payments = null,
    Object? payment = null,
  }) {
    return _then(_$CreateOrderStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      deliveries: null == deliveries
          ? _value._deliveries
          : deliveries // ignore: cast_nullable_to_non_nullable
              as List<Delivery>,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<Payment>,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$CreateOrderStateImpl extends CreateOrderState
    with DiagnosticableTreeMixin {
  const _$CreateOrderStateImpl(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required this.delivery,
      required final List<Payment> payments,
      required this.payment})
      : _products = products,
        _deliveries = deliveries,
        _payments = payments,
        super._();

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Delivery> _deliveries;
  @override
  List<Delivery> get deliveries {
    if (_deliveries is EqualUnmodifiableListView) return _deliveries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveries);
  }

  @override
  final Delivery delivery;
  final List<Payment> _payments;
  @override
  List<Payment> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState.order(products: $products, deliveries: $deliveries, delivery: $delivery, payments: $payments, payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState.order'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('deliveries', deliveries))
      ..add(DiagnosticsProperty('delivery', delivery))
      ..add(DiagnosticsProperty('payments', payments))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._deliveries, _deliveries) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_deliveries),
      delivery,
      const DeepCollectionEquality().hash(_payments),
      payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderStateImplCopyWith<_$CreateOrderStateImpl> get copyWith =>
      __$$CreateOrderStateImplCopyWithImpl<_$CreateOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)
        deliveriesLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        paymentsLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        order,
    required TResult Function(List<ProductWithCount> products) orderCreated,
    required TResult Function(List<ProductWithCount> products, String message)
        error,
  }) {
    return order(products, deliveries, delivery, payments, payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)?
        deliveriesLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        paymentsLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        order,
    TResult? Function(List<ProductWithCount> products)? orderCreated,
    TResult? Function(List<ProductWithCount> products, String message)? error,
  }) {
    return order?.call(products, deliveries, delivery, payments, payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate, String? deliveryName)?
        deliveriesLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        paymentsLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        order,
    TResult Function(List<ProductWithCount> products)? orderCreated,
    TResult Function(List<ProductWithCount> products, String message)? error,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(products, deliveries, delivery, payments, payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveriesOrderState value) deliveriesLoaded,
    required TResult Function(PaymentsOrderState value) paymentsLoaded,
    required TResult Function(CreateOrderState value) order,
    required TResult Function(CreatedOrderState value) orderCreated,
    required TResult Function(ErrorOrderState value) error,
  }) {
    return order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult? Function(PaymentsOrderState value)? paymentsLoaded,
    TResult? Function(CreateOrderState value)? order,
    TResult? Function(CreatedOrderState value)? orderCreated,
    TResult? Function(ErrorOrderState value)? error,
  }) {
    return order?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult Function(PaymentsOrderState value)? paymentsLoaded,
    TResult Function(CreateOrderState value)? order,
    TResult Function(CreatedOrderState value)? orderCreated,
    TResult Function(ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(this);
    }
    return orElse();
  }
}

abstract class CreateOrderState extends OrderState {
  const factory CreateOrderState(
      {required final List<ProductWithCount> products,
      required final List<Delivery> deliveries,
      required final Delivery delivery,
      required final List<Payment> payments,
      required final Payment payment}) = _$CreateOrderStateImpl;
  const CreateOrderState._() : super._();

  @override
  List<ProductWithCount> get products;
  List<Delivery> get deliveries;
  Delivery get delivery;
  List<Payment> get payments;
  Payment get payment;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderStateImplCopyWith<_$CreateOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedOrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$CreatedOrderStateImplCopyWith(_$CreatedOrderStateImpl value,
          $Res Function(_$CreatedOrderStateImpl) then) =
      __$$CreatedOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductWithCount> products});
}

/// @nodoc
class __$$CreatedOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$CreatedOrderStateImpl>
    implements _$$CreatedOrderStateImplCopyWith<$Res> {
  __$$CreatedOrderStateImplCopyWithImpl(_$CreatedOrderStateImpl _value,
      $Res Function(_$CreatedOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$CreatedOrderStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
    ));
  }
}

/// @nodoc

class _$CreatedOrderStateImpl extends CreatedOrderState
    with DiagnosticableTreeMixin {
  const _$CreatedOrderStateImpl(
      {required final List<ProductWithCount> products})
      : _products = products,
        super._();

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState.orderCreated(products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState.orderCreated'))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedOrderStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedOrderStateImplCopyWith<_$CreatedOrderStateImpl> get copyWith =>
      __$$CreatedOrderStateImplCopyWithImpl<_$CreatedOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)
        deliveriesLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        paymentsLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        order,
    required TResult Function(List<ProductWithCount> products) orderCreated,
    required TResult Function(List<ProductWithCount> products, String message)
        error,
  }) {
    return orderCreated(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)?
        deliveriesLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        paymentsLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        order,
    TResult? Function(List<ProductWithCount> products)? orderCreated,
    TResult? Function(List<ProductWithCount> products, String message)? error,
  }) {
    return orderCreated?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate, String? deliveryName)?
        deliveriesLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        paymentsLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        order,
    TResult Function(List<ProductWithCount> products)? orderCreated,
    TResult Function(List<ProductWithCount> products, String message)? error,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveriesOrderState value) deliveriesLoaded,
    required TResult Function(PaymentsOrderState value) paymentsLoaded,
    required TResult Function(CreateOrderState value) order,
    required TResult Function(CreatedOrderState value) orderCreated,
    required TResult Function(ErrorOrderState value) error,
  }) {
    return orderCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult? Function(PaymentsOrderState value)? paymentsLoaded,
    TResult? Function(CreateOrderState value)? order,
    TResult? Function(CreatedOrderState value)? orderCreated,
    TResult? Function(ErrorOrderState value)? error,
  }) {
    return orderCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult Function(PaymentsOrderState value)? paymentsLoaded,
    TResult Function(CreateOrderState value)? order,
    TResult Function(CreatedOrderState value)? orderCreated,
    TResult Function(ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated(this);
    }
    return orElse();
  }
}

abstract class CreatedOrderState extends OrderState {
  const factory CreatedOrderState(
          {required final List<ProductWithCount> products}) =
      _$CreatedOrderStateImpl;
  const CreatedOrderState._() : super._();

  @override
  List<ProductWithCount> get products;
  @override
  @JsonKey(ignore: true)
  _$$CreatedOrderStateImplCopyWith<_$CreatedOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$ErrorOrderStateImplCopyWith(_$ErrorOrderStateImpl value,
          $Res Function(_$ErrorOrderStateImpl) then) =
      __$$ErrorOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductWithCount> products, String message});
}

/// @nodoc
class __$$ErrorOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$ErrorOrderStateImpl>
    implements _$$ErrorOrderStateImplCopyWith<$Res> {
  __$$ErrorOrderStateImplCopyWithImpl(
      _$ErrorOrderStateImpl _value, $Res Function(_$ErrorOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? message = null,
  }) {
    return _then(_$ErrorOrderStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorOrderStateImpl extends ErrorOrderState
    with DiagnosticableTreeMixin {
  const _$ErrorOrderStateImpl(
      {required final List<ProductWithCount> products, this.message = 'Ошибка'})
      : _products = products,
        super._();

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderState.error(products: $products, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderState.error'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOrderStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOrderStateImplCopyWith<_$ErrorOrderStateImpl> get copyWith =>
      __$$ErrorOrderStateImplCopyWithImpl<_$ErrorOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProductWithCount> products) init,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)
        deliveriesLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        paymentsLoaded,
    required TResult Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)
        order,
    required TResult Function(List<ProductWithCount> products) orderCreated,
    required TResult Function(List<ProductWithCount> products, String message)
        error,
  }) {
    return error(products, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProductWithCount> products)? init,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            DateTime deliveryDate,
            String? deliveryName)?
        deliveriesLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        paymentsLoaded,
    TResult? Function(
            List<ProductWithCount> products,
            List<Delivery> deliveries,
            Delivery delivery,
            List<Payment> payments,
            Payment payment)?
        order,
    TResult? Function(List<ProductWithCount> products)? orderCreated,
    TResult? Function(List<ProductWithCount> products, String message)? error,
  }) {
    return error?.call(products, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProductWithCount> products)? init,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, DateTime deliveryDate, String? deliveryName)?
        deliveriesLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        paymentsLoaded,
    TResult Function(List<ProductWithCount> products, List<Delivery> deliveries,
            Delivery delivery, List<Payment> payments, Payment payment)?
        order,
    TResult Function(List<ProductWithCount> products)? orderCreated,
    TResult Function(List<ProductWithCount> products, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(products, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitOrderState value) init,
    required TResult Function(DeliveriesOrderState value) deliveriesLoaded,
    required TResult Function(PaymentsOrderState value) paymentsLoaded,
    required TResult Function(CreateOrderState value) order,
    required TResult Function(CreatedOrderState value) orderCreated,
    required TResult Function(ErrorOrderState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitOrderState value)? init,
    TResult? Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult? Function(PaymentsOrderState value)? paymentsLoaded,
    TResult? Function(CreateOrderState value)? order,
    TResult? Function(CreatedOrderState value)? orderCreated,
    TResult? Function(ErrorOrderState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitOrderState value)? init,
    TResult Function(DeliveriesOrderState value)? deliveriesLoaded,
    TResult Function(PaymentsOrderState value)? paymentsLoaded,
    TResult Function(CreateOrderState value)? order,
    TResult Function(CreatedOrderState value)? orderCreated,
    TResult Function(ErrorOrderState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorOrderState extends OrderState {
  const factory ErrorOrderState(
      {required final List<ProductWithCount> products,
      final String message}) = _$ErrorOrderStateImpl;
  const ErrorOrderState._() : super._();

  @override
  List<ProductWithCount> get products;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorOrderStateImplCopyWith<_$ErrorOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDeliveries,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Delivery? delivery, Payment payment)
        selectPayment,
    required TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)
        orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDeliveries,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult? Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDeliveries,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveriesOrderEvent value) loadDeliveries,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDeliveriesOrderEventImplCopyWith<$Res> {
  factory _$$LoadDeliveriesOrderEventImplCopyWith(
          _$LoadDeliveriesOrderEventImpl value,
          $Res Function(_$LoadDeliveriesOrderEventImpl) then) =
      __$$LoadDeliveriesOrderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDeliveriesOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$LoadDeliveriesOrderEventImpl>
    implements _$$LoadDeliveriesOrderEventImplCopyWith<$Res> {
  __$$LoadDeliveriesOrderEventImplCopyWithImpl(
      _$LoadDeliveriesOrderEventImpl _value,
      $Res Function(_$LoadDeliveriesOrderEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDeliveriesOrderEventImpl
    with DiagnosticableTreeMixin
    implements LoadDeliveriesOrderEvent {
  const _$LoadDeliveriesOrderEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.loadDeliveries()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'OrderEvent.loadDeliveries'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDeliveriesOrderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDeliveries,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Delivery? delivery, Payment payment)
        selectPayment,
    required TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)
        orderCreate,
  }) {
    return loadDeliveries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDeliveries,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult? Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
  }) {
    return loadDeliveries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDeliveries,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (loadDeliveries != null) {
      return loadDeliveries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveriesOrderEvent value) loadDeliveries,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return loadDeliveries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return loadDeliveries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (loadDeliveries != null) {
      return loadDeliveries(this);
    }
    return orElse();
  }
}

abstract class LoadDeliveriesOrderEvent implements OrderEvent {
  const factory LoadDeliveriesOrderEvent() = _$LoadDeliveriesOrderEventImpl;
}

/// @nodoc
abstract class _$$SelectDeliveryOrderEventImplCopyWith<$Res> {
  factory _$$SelectDeliveryOrderEventImplCopyWith(
          _$SelectDeliveryOrderEventImpl value,
          $Res Function(_$SelectDeliveryOrderEventImpl) then) =
      __$$SelectDeliveryOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Delivery delivery});

  $DeliveryCopyWith<$Res> get delivery;
}

/// @nodoc
class __$$SelectDeliveryOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SelectDeliveryOrderEventImpl>
    implements _$$SelectDeliveryOrderEventImplCopyWith<$Res> {
  __$$SelectDeliveryOrderEventImplCopyWithImpl(
      _$SelectDeliveryOrderEventImpl _value,
      $Res Function(_$SelectDeliveryOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = null,
  }) {
    return _then(_$SelectDeliveryOrderEventImpl(
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res> get delivery {
    return $DeliveryCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }
}

/// @nodoc

class _$SelectDeliveryOrderEventImpl
    with DiagnosticableTreeMixin
    implements SelectDeliveryOrderEvent {
  const _$SelectDeliveryOrderEventImpl({required this.delivery});

  @override
  final Delivery delivery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.selectDelivery(delivery: $delivery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.selectDelivery'))
      ..add(DiagnosticsProperty('delivery', delivery));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDeliveryOrderEventImpl &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delivery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDeliveryOrderEventImplCopyWith<_$SelectDeliveryOrderEventImpl>
      get copyWith => __$$SelectDeliveryOrderEventImplCopyWithImpl<
          _$SelectDeliveryOrderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDeliveries,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Delivery? delivery, Payment payment)
        selectPayment,
    required TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)
        orderCreate,
  }) {
    return selectDelivery(delivery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDeliveries,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult? Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
  }) {
    return selectDelivery?.call(delivery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDeliveries,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (selectDelivery != null) {
      return selectDelivery(delivery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveriesOrderEvent value) loadDeliveries,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return selectDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return selectDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (selectDelivery != null) {
      return selectDelivery(this);
    }
    return orElse();
  }
}

abstract class SelectDeliveryOrderEvent implements OrderEvent {
  const factory SelectDeliveryOrderEvent({required final Delivery delivery}) =
      _$SelectDeliveryOrderEventImpl;

  Delivery get delivery;
  @JsonKey(ignore: true)
  _$$SelectDeliveryOrderEventImplCopyWith<_$SelectDeliveryOrderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPaymentOrderEventImplCopyWith<$Res> {
  factory _$$SelectPaymentOrderEventImplCopyWith(
          _$SelectPaymentOrderEventImpl value,
          $Res Function(_$SelectPaymentOrderEventImpl) then) =
      __$$SelectPaymentOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Delivery? delivery, Payment payment});

  $DeliveryCopyWith<$Res>? get delivery;
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$SelectPaymentOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SelectPaymentOrderEventImpl>
    implements _$$SelectPaymentOrderEventImplCopyWith<$Res> {
  __$$SelectPaymentOrderEventImplCopyWithImpl(
      _$SelectPaymentOrderEventImpl _value,
      $Res Function(_$SelectPaymentOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = freezed,
    Object? payment = null,
  }) {
    return _then(_$SelectPaymentOrderEventImpl(
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as Delivery?,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $DeliveryCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$SelectPaymentOrderEventImpl
    with DiagnosticableTreeMixin
    implements SelectPaymentOrderEvent {
  const _$SelectPaymentOrderEventImpl({this.delivery, required this.payment});

  @override
  final Delivery? delivery;
  @override
  final Payment payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.selectPayment(delivery: $delivery, payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.selectPayment'))
      ..add(DiagnosticsProperty('delivery', delivery))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPaymentOrderEventImpl &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delivery, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPaymentOrderEventImplCopyWith<_$SelectPaymentOrderEventImpl>
      get copyWith => __$$SelectPaymentOrderEventImplCopyWithImpl<
          _$SelectPaymentOrderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDeliveries,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Delivery? delivery, Payment payment)
        selectPayment,
    required TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)
        orderCreate,
  }) {
    return selectPayment(delivery, payment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDeliveries,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult? Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
  }) {
    return selectPayment?.call(delivery, payment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDeliveries,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (selectPayment != null) {
      return selectPayment(delivery, payment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveriesOrderEvent value) loadDeliveries,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return selectPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return selectPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (selectPayment != null) {
      return selectPayment(this);
    }
    return orElse();
  }
}

abstract class SelectPaymentOrderEvent implements OrderEvent {
  const factory SelectPaymentOrderEvent(
      {final Delivery? delivery,
      required final Payment payment}) = _$SelectPaymentOrderEventImpl;

  Delivery? get delivery;
  Payment get payment;
  @JsonKey(ignore: true)
  _$$SelectPaymentOrderEventImplCopyWith<_$SelectPaymentOrderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderCreateOrderEventImplCopyWith<$Res> {
  factory _$$OrderCreateOrderEventImplCopyWith(
          _$OrderCreateOrderEventImpl value,
          $Res Function(_$OrderCreateOrderEventImpl) then) =
      __$$OrderCreateOrderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductWithCount> products,
      String userName,
      String userPhone,
      String userEmail,
      String? comment});
}

/// @nodoc
class __$$OrderCreateOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$OrderCreateOrderEventImpl>
    implements _$$OrderCreateOrderEventImplCopyWith<$Res> {
  __$$OrderCreateOrderEventImplCopyWithImpl(_$OrderCreateOrderEventImpl _value,
      $Res Function(_$OrderCreateOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? userName = null,
    Object? userPhone = null,
    Object? userEmail = null,
    Object? comment = freezed,
  }) {
    return _then(_$OrderCreateOrderEventImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductWithCount>,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OrderCreateOrderEventImpl
    with DiagnosticableTreeMixin
    implements OrderCreateOrderEvent {
  const _$OrderCreateOrderEventImpl(
      {required final List<ProductWithCount> products,
      required this.userName,
      required this.userPhone,
      required this.userEmail,
      this.comment})
      : _products = products;

  final List<ProductWithCount> _products;
  @override
  List<ProductWithCount> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String userName;
  @override
  final String userPhone;
  @override
  final String userEmail;
  @override
  final String? comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderEvent.orderCreate(products: $products, userName: $userName, userPhone: $userPhone, userEmail: $userEmail, comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderEvent.orderCreate'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('userPhone', userPhone))
      ..add(DiagnosticsProperty('userEmail', userEmail))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreateOrderEventImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      userName,
      userPhone,
      userEmail,
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreateOrderEventImplCopyWith<_$OrderCreateOrderEventImpl>
      get copyWith => __$$OrderCreateOrderEventImplCopyWithImpl<
          _$OrderCreateOrderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDeliveries,
    required TResult Function(Delivery delivery) selectDelivery,
    required TResult Function(Delivery? delivery, Payment payment)
        selectPayment,
    required TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)
        orderCreate,
  }) {
    return orderCreate(products, userName, userPhone, userEmail, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDeliveries,
    TResult? Function(Delivery delivery)? selectDelivery,
    TResult? Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult? Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
  }) {
    return orderCreate?.call(products, userName, userPhone, userEmail, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDeliveries,
    TResult Function(Delivery delivery)? selectDelivery,
    TResult Function(Delivery? delivery, Payment payment)? selectPayment,
    TResult Function(List<ProductWithCount> products, String userName,
            String userPhone, String userEmail, String? comment)?
        orderCreate,
    required TResult orElse(),
  }) {
    if (orderCreate != null) {
      return orderCreate(products, userName, userPhone, userEmail, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDeliveriesOrderEvent value) loadDeliveries,
    required TResult Function(SelectDeliveryOrderEvent value) selectDelivery,
    required TResult Function(SelectPaymentOrderEvent value) selectPayment,
    required TResult Function(OrderCreateOrderEvent value) orderCreate,
  }) {
    return orderCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult? Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult? Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult? Function(OrderCreateOrderEvent value)? orderCreate,
  }) {
    return orderCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDeliveriesOrderEvent value)? loadDeliveries,
    TResult Function(SelectDeliveryOrderEvent value)? selectDelivery,
    TResult Function(SelectPaymentOrderEvent value)? selectPayment,
    TResult Function(OrderCreateOrderEvent value)? orderCreate,
    required TResult orElse(),
  }) {
    if (orderCreate != null) {
      return orderCreate(this);
    }
    return orElse();
  }
}

abstract class OrderCreateOrderEvent implements OrderEvent {
  const factory OrderCreateOrderEvent(
      {required final List<ProductWithCount> products,
      required final String userName,
      required final String userPhone,
      required final String userEmail,
      final String? comment}) = _$OrderCreateOrderEventImpl;

  List<ProductWithCount> get products;
  String get userName;
  String get userPhone;
  String get userEmail;
  String? get comment;
  @JsonKey(ignore: true)
  _$$OrderCreateOrderEventImplCopyWith<_$OrderCreateOrderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
