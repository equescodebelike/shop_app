import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/service/catalog_service.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products_request.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/catalog_page_update/catalog_page_model.dart';
import 'package:shop_app/pages/catalog_page_update/catalog_page_widget.dart';
import 'package:shop_app/util/dio_util.dart';
import 'package:shop_app/util/wm_extensions.dart';

abstract class ICatalogPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<Product>> get productsState;

  // EntityStateNotifier<Sort> get sortState;

  // TextEditingController get searchController;

  ScrollController get scrollController;

  void openSort();

  void openProduct({required Product product});
}

CatalogPageWidgetModel defaultCatalogPageWidgetModelFactory(
    BuildContext context) {
  return CatalogPageWidgetModel(
    model: CatalogPageModel(),
    catalogService: DioUtil().catalogService,
  );
}

class CatalogPageWidgetModel
    extends WidgetModel<CatalogPageWidget, CatalogPageModel>
    with ThemeProvider
    implements ICatalogPageWidgetModel {
  final CatalogService catalogService;
  @override
  final productsState = EntityStateNotifier();

  @override
  final scrollController = ScrollController();

  // @override
  // final searchController = TextEditingController();

  // @override
  // final sortState = EntityStateNotifier();

  bool _hasNext = true;
  // ignore: unused_field
  bool _loading = false;
  int _nextPage = 1;

  List<int> get _categoryIds => widget.categotyId == null
      ? []
      : [
          widget.categotyId!,
        ];

  CatalogPageWidgetModel({
    required CatalogPageModel model,
    required this.catalogService,
  }) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    productsState.loading();
    // searchController.text = widget.search ?? '';
    // searchController.addListener(loadProducts);

    loadProducts();
  }

  Future<void> loadProducts([bool refresh = true]) async {
    if (!_hasNext && !refresh) {
      return;
    }

    if (refresh) {
      _nextPage = 1;
      _hasNext = true;
    }

    final List<Product> currentProducts =
        refresh ? [] : productsState.value?.data ?? [];
    // final selected = sortState.value?.data;
    try {
      _loading = true;

      final products = await catalogService.getProducts(
        page: _nextPage,
        size: 4,
        request: CatalogProductsRequest(
          // sortBy: selected?.key,
          // search: searchController.text,
          categoryIds: _categoryIds,
          productIds: widget.productIds,
        ),
      );
      currentProducts.addAll(products.results);
      productsState.content(
        List.of(currentProducts),
      );
      _loading = false;
      _nextPage++;
      _hasNext = products.next != null;
    } catch (e, s) {
      // TODO: StackTrace, Dispose
      throw Exception(e);

      // if (isMounted) {
      //   context.showSnackBar('Не удалось загрузить продукты');
      // }
    }
  }

  @override
  void dispose() {
    productsState.dispose();
    super.dispose();
  }

  @override
  void openSort() {
    // TODO: implement openSort
  }

  // @override
  // void openSort() {
  //   showModalBottomSheet(
  //     context: router.root.navigatorKey.currentContext!,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topRight: Radius.circular(25),
  //         topLeft: Radius.circular(25),
  //       ),
  //     ),
  //     builder: _buildContent,
  //   );
  // }

  // Widget _buildContent(BuildContext context) {
  //   final localizations = AppLocalizations.of(context);
  //   final selected = sortState.value?.data;
  //   return Column(
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.all(10.0),
  //         child: Text(
  //           localizations.sort,
  //           style: theme.textTheme.bodyLarge?.copyWith(
  //               color: theme.colorScheme.onSurface,
  //               overflow: TextOverflow.ellipsis),
  //         ),
  //       ),
  //       ...Sort.sorts[localizations.localeName]!.map(
  //         (s) => ListTile(
  //           onTap: () {
  //             _setSort(s, context);
  //           },
  //           leading: Checkbox.adaptive(
  //             value: s == selected,
  //             onChanged: (bool? value) {
  //               _setSort(s, context);
  //             },
  //           ),
  //           title: Text(
  //             s.name,
  //             style: theme.textTheme.bodyMedium?.copyWith(
  //                 color: theme.colorScheme.onSurface,
  //                 overflow: TextOverflow.ellipsis),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // void _setSort(Sort s, BuildContext context) {
  //   sortState.content(s);
  //   loadProducts();
  //   context.router.root.pop();
  // }

  @override
  void openProduct({
    required Product product,
  }) {
    context.router.navigate(
      ProductRoute(
        productId: product.id,
        product: product,
      ),
    );
  }
}
