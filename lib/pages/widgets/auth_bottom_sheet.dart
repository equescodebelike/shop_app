import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';

class AuthBottomSheet extends StatelessWidget {
  const AuthBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 5.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Войдите, чтобы заказать товар',
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            onTap: () async {
              context.router.root.pop();
              await context.router.navigate(
                UserProfileTab(children: [
                  AuthRouteWidget(),
                ]),
              );
            },
            text: 'Войти',
          ),
        ],
      ),
    );
  }
}
