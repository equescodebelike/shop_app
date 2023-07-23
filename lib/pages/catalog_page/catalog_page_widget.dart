import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_app/pages/catalog_page/catalog_page_wm.dart';
import 'package:shop_app/pages/favorites_page/favorites.dart';
import 'package:shop_app/pages/widgets/catalog_card_widget.dart';

//TODO: Do comments
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
        // automaticallyImplyLeading: !kIsWeb,
        title: const Text('Каталог'),
        centerTitle: true,
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(40),
        //   child: EntityStateNotifierBuilder(
        //     listenableEntityState: wm.sortState,
        //     builder: (context, data) {
        //       return SearchRow(
        //         controller: wm.searchController,
        //         onSort: wm.openSort,
        //         height: 40,
        //         active: data != null,
        //       );
        //     },
        //   ),
        // ),
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

// class SearchRow extends StatelessWidget implements PreferredSizeWidget {
//   const SearchRow({
//     Key? key,
//     required this.controller,
//     required this.height,
//     required this.onSort,
//     required this.active,
//   }) : super(key: key);

//   final TextEditingController controller;
//   final double height;
//   final VoidCallback? onSort;
//   final bool active;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         height: height,
//         child: Row(
//           children: [
//             Expanded(
//               flex: 8,
//               child: SearchWidget(
//                 controller: controller,
//               ),
//             ),
//             Expanded(
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   Positioned.fill(
//                     child: IconButton(
//                       icon: const Icon(
//                         Icons.sort_rounded,
//                       ),
//                       onPressed: onSort,
//                     ),
//                   ),
//                   if (active)
//                     Positioned.fill(
//                       top: 5,
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Icon(
//                           Icons.fiber_manual_record,
//                           size: 10,
//                           color: Theme.of(context).colorScheme.error,
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(height);
// }