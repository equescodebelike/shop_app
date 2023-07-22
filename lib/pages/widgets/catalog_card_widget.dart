import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/pages/widgets/extensions/money_extension.dart';

class CatalogCardWidget extends StatefulWidget {
  const CatalogCardWidget({
    required this.product,
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;
  final Product product;

  @override
  State<CatalogCardWidget> createState() => _CatalogCardWidgetState();
}

class _CatalogCardWidgetState extends State<CatalogCardWidget> {
  final double _width = 164;

  final double _height = 250;

  bool checked = false;

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
                  CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: widget.product.picture,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: checked
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite_border,
                              color: Color(0xFF7d7d7d)),
                      onPressed: () {
                        setState(() {
                          checked = !checked;
                        });
                      },
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
                    widget.product.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: 48,
                  child: CupertinoListTile(
                    padding: EdgeInsets.zero,
                    title: Text(
                      widget.product.price.formatMoney(),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      widget.product.oldPrice?.formatMoney() ?? '',
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    trailing: SizedBox(
                      width: 48,
                      height: 48,
                      child: IconButton.filled(
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
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
