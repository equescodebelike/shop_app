import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_app/pages/catalog_page/catalog_page_wm.dart';
import 'package:shop_app/pages/favorites_page/favorites_redux.dart';
import 'package:shop_app/pages/widgets/catalog_card_widget.dart';

@RoutePage()
class CatalogPageWidget extends ElementaryWidget<ICatalogPageWidgetModel> {
  const CatalogPageWidget({
    Key? key,
    @queryParam this.title,
    @queryParam this.categotyId,
    @queryParam this.productIds = const <int>[],
    WidgetModelFactory wmFactory = defaultCatalogPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String? title;
  final int? categotyId;
  final List<int> productIds;

  @override
  Widget build(ICatalogPageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог'),
        centerTitle: true,
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.productsState,
        loadingBuilder: (_, __) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        builder: (context, data) {
          final products = data ?? [];

          if (products.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Image.asset(
                      'assets/images/empty_photo.png',
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Товар',
                      textAlign: TextAlign.center,
                      style: wm.textTheme.bodyLarge?.copyWith(
                        color: wm.colorScheme.onBackground,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          return GridView.builder(
            itemCount: products.length,
            gridDelegate: kIsWeb
                ? const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 12.99 / 18,
                  )
                : const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 11 / 18,
                  ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return StoreConnector<Set<int>, bool>(
                builder: (context, isFavorite) {
                  return StoreConnector<Set<int>, VoidCallback>(
                    builder: (context, callback) {
                      return CatalogCardWidget(
                        product: products[index],
                        isFavorite: isFavorite,
                        onFavoriteTap: callback,
                        onTap: () => wm.openProduct(
                          product: products[index],
                        ),
                      );
                    },
                    converter: (store) => () {
                      final favorite = store.state.contains(products[index].id);
                      if (favorite) {
                        store.dispatch(RemoveAction(products[index].id));
                      } else {
                        store.dispatch(AddAction(products[index].id));
                      }
                    },
                  );
                },
                converter: (store) => store.state.contains(products[index].id),
              );
            },
          );
        },
      ),
    );
  }
}
