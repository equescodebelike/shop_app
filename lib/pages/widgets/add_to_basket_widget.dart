import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/cart/cart_update_model.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/auth_bottom_sheet.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';
import 'package:shop_app/util/dio_util.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final cartRepository = DioUtil().cartRepository;
    final profileRepository = DioUtil().profileRepository;
    return StreamBuilder(
      initialData: cartRepository.cart.valueOrNull,
      stream: cartRepository.cart.stream,
      builder: (context, snapshot) {
        final products = snapshot.data?.products ?? [];
        final id = product.id;
        final cartProduct =
            products.where((p) => p.product.id == id).firstOrNull;

        if (cartProduct == null) {
          return CustomFilledButton(
            text: 'В корзину',
            onTap: () {
              if (!profileRepository.repository.auth) {
                showModalBottomSheet(
                  context: context.router.root.navigatorKey.currentContext!,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  // builder: (context) => const AuthBottomSheet(),
                  builder: (context) => const AuthBottomSheet(),
                );
                return;
              }

              cartRepository.postCart(
                request: CartUpdateModel(
                  productId: product.id,
                ),
              );
            },
          );
        }

        return Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  if (cartProduct.count != 1) {
                    cartRepository.addProductCount(
                      request: CartUpdateModel(
                        productId: product.id,
                        count: cartProduct.count - 1,
                      ),
                    );
                  } else {
                    cartRepository.deleteCart(
                      request: CartUpdateModel(
                        productId: product.id,
                      ),
                    );
                  }
                },
                icon: const Icon(
                  Icons.remove,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: CustomFilledButton(
                onTap: () {
                  context.router.navigate(
                    const BasketTab(),
                  );
                },
                text: 'В корзине: ${cartProduct.count}',
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () => cartRepository.addProductCount(
                  request: CartUpdateModel(
                    productId: product.id,
                    count: cartProduct.count + 1,
                  ),
                ),
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        );
      },
    );
  }
}
