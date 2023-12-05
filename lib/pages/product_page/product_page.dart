import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data_source/db_repository.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/model/db_model/media_model.dart';
import 'package:shop_app/model/db_model/pattern_model.dart';
import 'package:shop_app/pages/widgets/add_to_basket_widget.dart';
import 'package:shop_app/pages/widgets/extensions/money_extension.dart';

@RoutePage()
class ProductPage extends StatefulWidget {
  const ProductPage({
    super.key,
    required this.product,
    @pathParam required this.productId,
  });

  final ClothesModel product;
  final int productId;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool checked = false;
  final db = DatabaseRepository();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Страница товара',
          style: theme.textTheme.bodyLarge,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '-146%',
                    style: theme.textTheme.bodySmall?.copyWith(fontSize: 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () async {},
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () async {
                      db.deleteClothesModel(widget.productId);
                      context.router.pop();
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
              FutureBuilder(
                future: db.getMediaByModelId(widget.productId),
                builder: (BuildContext context,
                    AsyncSnapshot<MediaModel?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    throw Exception(snapshot.error);
                  }
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      height: 250,
                      width: 250,
                      child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl: snapshot.data?.photoUrl ??
                            'assets/images/empty_photo.png',
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
                  );
                },
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.product.modelName,
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  r'$0',
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.product.description,
                    style: theme.textTheme.bodySmall?.copyWith(fontSize: 16),
                  ),
                ),
              ),
              FutureBuilder(
                future: db.getPatternByModelId(widget.productId),
                builder: (BuildContext context,
                    AsyncSnapshot<PatternModel?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    throw Exception(snapshot.error);
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            snapshot.data?.tutorial ?? 'DIY',
                            style: theme.textTheme.bodySmall
                                ?.copyWith(fontSize: 16),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            snapshot.data?.size ?? 'S',
                            style: theme.textTheme.bodySmall
                                ?.copyWith(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              AddToBasket(
                product: widget.product,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
