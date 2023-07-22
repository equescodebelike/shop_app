import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Image> pictures = [
    Image.asset('assets/images/empty_photo.png'),
    Image.asset('assets/images/logo.png'),
  ];

  bool checked = false;

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
                  Text('-146%',
                      style: theme.textTheme.bodySmall?.copyWith(fontSize: 18)),
                  const Spacer(),
                  IconButton(
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: PageView.builder(
                    itemCount: pictures.length,
                    itemBuilder: (_, index) {
                      final picture = pictures[index];
                      return picture;
                    },
                  ),
                ),
              ),
              Text(
                'Название товара Название товара Название товара Название товара Название товара Название товара ',
                style: theme.textTheme.bodyLarge?.copyWith(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
