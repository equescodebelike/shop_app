import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';

@RoutePage()
class ShowCasePage extends StatelessWidget {
  const ShowCasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 147,
        title: Image.asset(
          'assets/images/logo_appbar.png',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 60, 1, 0),
            child: CustomFilledButton(
              onTap: () {
                context.router.navigate(
                  const BasketTab(),
                );
              },
              text: 'В корзину',
            ),
          )
        ],
      ),
    );
  }
}
