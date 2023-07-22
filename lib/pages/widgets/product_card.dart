import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../model/catalog/get/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    this.onTap,
    this.favourite = true,
    this.onFavoutiteTap,
  }) : super(key: key);

  final bool favourite;
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onFavoutiteTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    onTap: onTap,
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: product.picture,
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
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: _ProductDescription(
            onTap: onTap,
            onFavoutiteTap: onFavoutiteTap,
            product: product,
            favourite: favourite,
          ),
        )
      ],
    );
  }
}

class _ProductDescription extends StatelessWidget {
  const _ProductDescription({
    super.key,
    required this.product,
    this.onTap,
    this.onFavoutiteTap,
    required this.favourite,
  });

  final bool favourite;
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onFavoutiteTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldPrice = product.oldPrice;
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // RatingBarIndicator(
                      //   rating: product.rating?.toDouble() ?? 0,
                      //   itemBuilder: (context, index) => const Icon(
                      //     Icons.star,
                      //     color: Colors.amber,
                      //   ),
                      //   itemCount: 5,
                      //   itemSize: 15.0,
                      //   physics: const NeverScrollableScrollPhysics(),
                      //   direction: Axis.horizontal,
                      // ),
                      // FavouriteButton(
                      //   productId: product.id,
                      //   favourite: favourite,
                      //   onTap: onFavoutiteTap,
                      // )
                    ],
                  ),
                ),
                Flexible(
                  child: FittedBox(
                    child: Text(
                      product.name,
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(color: theme.colorScheme.onBackground),
                    ),
                  ),
                ),
                Flexible(
                  child: FittedBox(
                    child: RichText(
                      text: TextSpan(
                        text: product.price,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onBackground,
                        ),
                        children: [
                          const TextSpan(
                            text: ' ',
                          ),
                          if (oldPrice != null)
                            TextSpan(
                              text: oldPrice,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.onBackground,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
