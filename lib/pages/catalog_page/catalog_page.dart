import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/data/service/catalog_service.dart';
import 'package:shop_app/model/catalog/get/product/product_model.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/catalog_card_widget.dart';


class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  CatalogService get catalogService => context.read();

  Future<ProductModel> _loadProduct() async {
    final product = await catalogService.getProduct(productId: 1);
    return product;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Каталог',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return GestureDetector(
                    // onTap: () {
                    //   context.router.push(
                    //     const ProductRoute(),
                    //   );
                    // },
                    // child: CatalogCardWidget(
                    //   product: const Product(
                    //     badges: [],
                    //     brand: 'Бренд',
                    //   ),
                    // ),
                  );
                }, childCount: 20),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  //crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 16,
                  childAspectRatio: 164 / 250,
                  maxCrossAxisExtent: 164,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
