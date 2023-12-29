import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_app/data_source/db_repository.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/model/db_model/material_model.dart';
import 'package:shop_app/pages/catalog_page/catalog_page_wm.dart';
import 'package:shop_app/pages/catalog_page/clothes_sort_option.dart';
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
    final db = DatabaseRepository();
    final pageController = PageController(viewportFraction: 1);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              wm.updateSortOption(ClothesSortOption.alphabetical);
            },
            icon: wm.selectedSortOption == ClothesSortOption.alphabetical
                ? const Icon(Icons.filter_alt_sharp)
                : const Icon(Icons.filter_alt_off),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                wm.addProduct();
              },
              icon: const Icon(Icons.add),
            ),
          )
        ],
      ),
      body: FutureBuilder(
        future: db.getAllClothes(wm.getOrderByClause(wm.selectedSortOption)),
        builder:
            (BuildContext context, AsyncSnapshot<List<ClothesModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            throw Exception(snapshot.error);
          }
          final products = snapshot.data ?? [];
          // wm.sortClothes(snapshot.data ?? [], wm.selectedSortOption);

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

          return Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: pageController,
                    itemCount: (products.length / 10).ceil(),
                    itemBuilder: (context, pageIndex) {
                      final startIndex = pageIndex * 10;
                      final endIndex = (pageIndex + 1) * 10;
                      final visibleProducts = products.sublist(
                        startIndex,
                        endIndex < products.length ? endIndex : products.length,
                      );
                      late String page =
                          '${(pageController.page ?? 0).toInt() + 1} / ${(products.length / 10).ceil()}';
                      return GridView.builder(
                        itemCount: visibleProducts.length,
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
                                    product: visibleProducts[index],
                                    isFavorite: isFavorite,
                                    onFavoriteTap: callback,
                                    onTap: () => wm.openProduct(
                                      product: visibleProducts[index],
                                    ),
                                  );
                                },
                                converter: (store) => () {
                                  final favorite = store.state
                                      .contains(products[index].modelId);
                                  if (favorite) {
                                    store.dispatch(
                                        RemoveAction(products[index].modelId));
                                  } else {
                                    store.dispatch(
                                        AddAction(products[index].modelId));
                                  }
                                },
                              );
                            },
                            converter: (store) =>
                                store.state.contains(products[index].modelId),
                          );
                        },
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      if (pageController.page! > 0) {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  // Text(
                  //   '${(pageController.page ?? 0).toInt() + 1} / ${(products.length / 10).ceil()}',
                  // ),
                  IconButton(
                    onPressed: () {
                      if (pageController.page! <
                          (products.length / 10).ceil() - 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    icon: const Icon(Icons.arrow_forward),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Total number of models: ${products.length}',
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
