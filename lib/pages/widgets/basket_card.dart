import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/cart/cart_product.dart';
import 'package:shop_app/model/cart/cart_update_model.dart';
import 'package:shop_app/pages/widgets/extensions/money_extension.dart';
import 'package:shop_app/util/dio_util.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    Key? key,
    required this.cartProduct,
    this.onSelect,
    required this.checked,
    required this.onTap,
  }) : super(key: key);

  final CartProduct cartProduct;
  final bool checked;
  final ValueChanged<bool?>? onSelect;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cartRepository = DioUtil().cartRepository;
    final oldPrice = cartProduct.product.price;
    return ListTile(
      onTap: onTap,
      leading: AspectRatio(
        aspectRatio: 1.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: cartProduct.product.picture,
            progressIndicatorBuilder: (_, __, ___) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            errorWidget: (_, __, ___) {
              return Image.asset(
                'assets/images/empty_photo.png',
                fit: BoxFit.fill,
              );
            },
          ),
        ),
      ),
      title: Text(
        cartProduct.product.name,
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
      subtitle: RichText(
        text: TextSpan(
          text: cartProduct.product.price.formatMoney(),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onBackground,
          ),
          children: [
            const TextSpan(
              text: ' ',
            ),
            TextSpan(
              text: oldPrice.formatMoney(),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onBackground,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ),
      trailing: SizedBox(
        width: 150,
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  if (cartProduct.count != 1) {
                    cartRepository.addProductCount(
                      request: CartUpdateModel(
                        productId: cartProduct.product.id,
                        count: cartProduct.count - 1,
                      ),
                    );
                  } else {
                    cartRepository.deleteCart(
                      request: CartUpdateModel(
                        productId: cartProduct.product.id,
                      ),
                    );
                  }
                },
                icon: const Icon(
                  Icons.remove,
                ),
              ),
            ),
            Text(
              '${cartProduct.count}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Expanded(
              child: IconButton(
                onPressed: () => cartRepository.addProductCount(
                  request: CartUpdateModel(
                    productId: cartProduct.product.id,
                    count: cartProduct.count + 1,
                  ),
                ),
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
