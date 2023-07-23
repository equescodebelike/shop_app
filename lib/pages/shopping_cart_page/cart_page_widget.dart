import 'package:auto_route/auto_route.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/basket_card.dart';
import 'package:shop_app/pages/widgets/extensions/money_extension.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';
import 'cart_page_wm.dart';

@RoutePage()
class CartPageWidget extends ElementaryWidget<ICartPageWidgetModel> {
  const CartPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartPageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
        centerTitle: true,
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.cartState,
        loadingBuilder: (_, __) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        builder: (context, data) {
          final products = data?.products ?? [];

          final logIn = wm.cartRepository.profileRepository.repository.auth;
          var router = context.router;
          if (!logIn || products.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    flex: logIn ? 4 : 5,
                    child: Image.asset(
                      'assets/images/empty_photo.png',
                    ),
                  ),
                  Flexible(
                    child: Text(
                      logIn
                          ? 'Здесь пока пусто'
                          : 'Что бы заказать товар, '
                              'Вам необходимо авторизоваться',
                      textAlign: TextAlign.center,
                      style: wm.textTheme.bodyLarge?.copyWith(
                        color: wm.colorScheme.onBackground,
                      ),
                    ),
                  ),
                  if (!logIn)
                    Expanded(
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          height: 50,
                          child: CustomFilledButton(
                            onTap: () async {
                              await router.navigate(
                                UserProfileTab(
                                  children: [
                                    AuthRouteWidget(),
                                  ]
                                ),
                              );
                            },
                            text: 'Войти',
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          }

          return EntityStateNotifierBuilder(
            listenableEntityState: wm.disabledCart,
            builder: (context, data) {
              final off = data ?? {};
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return BasketCard(
                    cartProduct: products[index],
                    onTap: () => wm.openProduct(
                      product: products[index].product,
                    ),
                    onSelect: (value) => wm.onSelect(products[index], value),
                    checked: !off.contains(products[index].product.id),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: EntityStateNotifierBuilder(
        listenableEntityState: wm.cartState,
        builder: (context, data) {
          final products = data?.products ?? [];
          final theme = Theme.of(context);
          final oldPrice = data?.oldPrice;

          return ValueListenableBuilder(
            valueListenable: wm.orderState,
            builder: (context, val, _) {
              return Visibility(
                visible: products.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'К оплате',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: (data?.price ?? Decimal.zero)
                                      .formatMoney(),
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: theme.colorScheme.onBackground,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: ' ',
                                    ),
                                    if (oldPrice != null)
                                      TextSpan(
                                        text: oldPrice.formatMoney(),
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                          color: theme.colorScheme.onBackground,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: val ? wm.order : null,
                        child: SizedBox(
                          width: double.infinity,
                          child: val
                              ? const Text(
                                  'Заказ',
                                  textAlign: TextAlign.center,
                                )
                              : const CircularProgressIndicator(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// TODO: implement or delete
class SearchRow extends StatelessWidget implements PreferredSizeWidget {
  const SearchRow({
    Key? key,
    required this.controller,
    required this.height,
    required this.onSort,
    required this.active,
  }) : super(key: key);

  final TextEditingController controller;
  final double height;
  final VoidCallback? onSort;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: IconButton(
                      icon: const Icon(
                        Icons.sort_rounded,
                      ),
                      onPressed: onSort,
                    ),
                  ),
                  if (active)
                    Positioned.fill(
                      top: 5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.fiber_manual_record,
                          size: 10,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
