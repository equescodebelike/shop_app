import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products.dart';

class CatalogCardWidget extends StatelessWidget {
  CatalogCardWidget({
    required this.product,
    super.key,
  });

  Product product;

  final double _width = 164;
  final double _height = 250;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: _width.ceil(),
          child: SizedBox(
            width: _width,
            height: _width,
            child: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/empty_photo.png',
                    width: _width,
                    height: _width,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: (_height - _width).ceil(),
          child: Container(
            width: _width,
            height: _height - _width,
            alignment: AlignmentDirectional.centerStart,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: _width,
                  height: 38,
                  child: Text(
                    "Название товара Название товара...",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: 48,
                  child: CupertinoListTile(
                    padding: EdgeInsets.zero,
                    title: const Text(
                      "1 990 ₽",
                      textAlign: TextAlign.start,
                    ),
                    subtitle: const Text(
                      "2 990 ₽",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    trailing: SizedBox(
                      width: 48,
                      height: 48,
                      child: IconButton.filled(
                        icon: const Icon(
                          CupertinoIcons.add,
                        ),
                        onPressed: () {
                          //TODO: избранное
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}