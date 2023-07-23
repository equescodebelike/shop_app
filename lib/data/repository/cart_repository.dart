import 'dart:async';

import 'package:shop_app/data/repository/profile_repository.dart';
import 'package:shop_app/data/service/cart_service.dart';
import 'package:shop_app/model/cart/cart_calculated_model.dart';
import 'package:shop_app/model/cart/cart_model.dart';
import 'package:shop_app/model/cart/cart_product.dart';
import 'package:shop_app/model/cart/cart_update_model.dart';
import 'package:shop_app/util/value_stream_wrapper.dart';

class CartRepository {
  final CartService cartService;
  final ProfileRepository profileRepository;
  StreamSubscription? _subscription;
  final ValueStreamWrapper<CartModel?> cart = ValueStreamWrapper();

  CartRepository(
    this.cartService,
    this.profileRepository,
  );

  void dispose() {
    _subscription?.cancel();
    cart.dispose();
  }

  void init() {
    _subscription = profileRepository.profile.stream.listen((event) {
      if (event == null) {
        cart.add(null);
      } else {
        loadCart(request: CalculatedCartModel());
      }
    });
  }

  Future<void> loadCart({
    required CalculatedCartModel request,
  }) async {
    final response = await cartService.cartCalc(request: request);
    cart.add(response);
  }

  Future<void> postCart({
    required CartUpdateModel request,
  }) async {
    final response = await cartService.postCart(request: request);
    cart.add(response);
  }

  Future<void> deleteCart({
    required CartUpdateModel request,
  }) async {
    _deleteProduct(request);
    final response = await cartService.deleteCart(request: request);
    cart.add(response);
  }

  Future<void> addProductCount({
    required CartUpdateModel request,
  }) async {
    List<CartProduct> newProducts = cart.value?.products
            .map((e) => e.product.id == request.productId
                ? e.copyWith(count: request.count ?? e.count + 1)
                : e)
            .toList() ??
        [];
    cart.add(cart.value?.copyWith(products: newProducts));

    final syncCart = await cartService.putCart(request: request);
    cart.add(syncCart);
  }

  void _deleteProduct(CartUpdateModel cartUpdate) {
    final productsWithoutSingle = cart.value?.products.where((element) =>
        (element.count > 1 && element.product.id == cartUpdate.productId));
    List<CartProduct> newProducts = productsWithoutSingle
            ?.map((e) => e.product.id == cartUpdate.productId
                ? e.copyWith(count: e.count - 1)
                : e)
            .toList() ??
        [];
    cart.add(cart.value?.copyWith(products: newProducts));
  }
}
