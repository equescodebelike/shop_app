import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/repository/cart_repository.dart';
import 'package:shop_app/model/cart/cart_calculated_model.dart';
import 'package:shop_app/model/cart/cart_model.dart';
import 'package:shop_app/model/cart/cart_product.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/model/catalog/get/product/product_count.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/util/dio_util.dart';
import 'package:shop_app/util/wm_extensions.dart';

import 'cart_page_model.dart';
import 'cart_page_widget.dart';

abstract class ICartPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<CartModel?> get cartState;

  ValueNotifier<bool> get orderState;

  EntityStateNotifier<Set<int>> get disabledCart;

  CartRepository get cartRepository;

  void openProduct({required Product product});

  void onSelect(CartProduct product, bool? value);

  void order();
}

CartPageWidgetModel defaultCartPageWidgetModelFactory(BuildContext context) {
  return CartPageWidgetModel(CartPageModel());
}

class CartPageWidgetModel extends WidgetModel<CartPageWidget, CartPageModel>
    with ThemeProvider
    implements ICartPageWidgetModel {
  @override
  final cartState = EntityStateNotifier();

  @override
  final cartRepository = DioUtil().cartRepository;

  @override
  final disabledCart = EntityStateNotifier();

  @override
  final orderState = ValueNotifier(true);

  CartPageWidgetModel(CartPageModel model) : super(model);

  StreamSubscription? sub;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadCart();
    sub = cartRepository.cart.stream.listen((event) {
      cartState.content(event);
      final off = disabledCart.value?.data ?? {};

      final products = event?.products ?? [];
      off.removeWhere(
        (id) => !products.any(
          (p) => p.product.id == id,
        ),
      );

      disabledCart.content(Set.of(off));
    });
  }

  @override
  void dispose() {
    sub?.cancel();
    cartState.dispose();

    super.dispose();
  }

  @override
  void openProduct({required Product product}) {
    context.router.navigate(
      ProductRoute(
        productId: product.id,
        product: product,
      ),
    );
  }

  Future<void> loadCart() async {
    await cartRepository.loadCart(
      request: CalculatedCartModel(),
    );
  }

  @override
  void onSelect(CartProduct product, bool? value) {
    final ch = value ?? false;
    final off = disabledCart.value?.data ?? {};

    if (!ch) {
      off.add(product.product.id);
    } else {
      off.remove(product.product.id);
    }

    disabledCart.content(Set.of(off));
  }

  @override
  Future<void> order() async {
    final profile = DioUtil().profileRepository;

    orderState.value = false;
    await profile.loadProfile();
    orderState.value = true;

    final off = disabledCart.value?.data ?? {};
    final cartOffer = cartRepository.cart.valueOrNull?.products ?? [];

    if (isMounted) {
      router.navigate(
        OrderRoute(
          products: cartOffer
              .where(
                (e) => !off.any(
                  (id) => e.product.id == id,
                ),
              )
              .map(
                (e) => ProductWithCount(
                  productId: e.product.id,
                  count: e.count,
                ),
              )
              .toList(),
        ),
      );
    }
  }
}
