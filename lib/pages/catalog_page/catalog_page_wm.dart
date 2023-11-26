import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/service/catalog_service.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products_request.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/catalog_page/catalog_page_model.dart';
import 'package:shop_app/pages/catalog_page/catalog_page_widget.dart';
import 'package:shop_app/util/dio_util.dart';
import 'package:shop_app/util/wm_extensions.dart';

abstract class ICatalogPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  EntityStateNotifier<List<Product>> get productsState;

  ScrollController get scrollController;

  void openProduct({required ClothesModel product});
  void addProduct();
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

    loadProducts();
  }

  Future<void> loadProducts() async {
    final List<Product> currentProducts = productsState.value?.data ?? [];
    try {
      final products = await catalogService.getProducts(
        request: CatalogProductsRequest(
          categoryIds: _categoryIds,
          productIds: widget.productIds,
        ),
      );
      currentProducts.addAll(products.results);
      productsState.content(
        List.of(currentProducts),
      );
    } catch (e, s) {
      if (kDebugMode) {
        print(s);
      }
      throw Exception(e);
    }
  }

  @override
  void dispose() {
    productsState.dispose();
    super.dispose();
  }

  @override
  void openProduct({
    required ClothesModel product,
  }) {
    context.router.navigate(
      ProductRoute(
        productId: product.modelId,
        product: product,
      ),
    );
  }

  @override
  void addProduct() {
    context.router.navigate(
      AddClothesModelRoute(),
    );
  }
}
