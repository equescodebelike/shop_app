import 'package:auto_route/annotations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/data/service/catalog_service.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products_request.dart';
import 'package:shop_app/pages/favorites_page/favorites_redux.dart';
import 'package:shop_app/pages/widgets/catalog_card_widget.dart';

@RoutePage()
class FavoritePageUpdate extends StatefulWidget {
  const FavoritePageUpdate({super.key});

  @override
  State<FavoritePageUpdate> createState() => _FavoritePageUpdateState();
}

class _FavoritePageUpdateState extends State<FavoritePageUpdate> {
  CatalogService get catalogClient => context.read();

  Future<List<Product>> _loadFavorites(List<int> favorites) async {
    final ids = favorites;
    try {
      final favorites = await catalogClient.getProducts(
        request: CatalogProductsRequest(
          productIds: ids,
        ),
      );
      return favorites.results;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Избранное'),
        centerTitle: true,
      ),
      body: StoreConnector<Set<int>, Set<int>>(
        builder: (context, state) {
          return FutureBuilder(
            future: _loadFavorites(state.toList()),
            builder: (context, snapshot) {
              final favorites = snapshot.data;

              if (favorites == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return GridView.builder(
                itemCount: favorites.length,
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
                  final favProduct = favorites[index];
                  return StoreConnector<Set<int>, bool>(
                    builder: (context, isFavorite) {
                      return StoreConnector<Set<int>, VoidCallback>(
                        builder: (context, callback) {
                          return CatalogCardWidget(
                            product: favProduct,
                            isFavorite: isFavorite,
                            onFavoriteTap: callback,
                          );
                        },
                        converter: (store) => () {
                          final favorite =
                              store.state.contains(favProduct.id);
                          if (favorite) {
                            store.dispatch(RemoveAction(favProduct.id));
                          } else {
                            store.dispatch(AddAction(favProduct.id));
                          }
                        },
                      );
                    },
                    converter: (store) =>
                        store.state.contains(favProduct.id),
                  );
                },
              );
            },
          );
        },
        converter: (store) => store.state,
      ),
    );
  }
}
