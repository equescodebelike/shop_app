import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/data/service/catalog_service.dart';
import 'package:shop_app/model/catalog/get/product/product_model.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products.dart';
import 'package:shop_app/pages/widgets/catalog_card_widget.dart';

@RoutePage()
class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  CatalogService get appClient => context.read();
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return CatalogCardWidget(
                    product: const Product(
                      badges: [],
                      brand: 'Бренд',
                    ),
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