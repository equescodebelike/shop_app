import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';
import 'auth_page_wm.dart';

@RoutePage()
class AuthPageWidget extends ElementaryWidget<IAuthPageWidgetModel> {
  const AuthPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthPageWidgetModel wm) {
    final theme = wm.theme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Вход'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Email',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: wm.emailController,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: CustomFilledButton(
                onTap: wm.onSendCode,
                text: 'Получить код',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
