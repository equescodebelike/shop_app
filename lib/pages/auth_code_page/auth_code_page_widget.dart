import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';
import 'auth_code_page_wm.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class AuthCodePageWidget extends ElementaryWidget<IAuthCodePageWidgetModel> {
  const AuthCodePageWidget({
    Key? key,
    required this.email,
    WidgetModelFactory wmFactory = defaultAuthCodePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String email;

  @override
  Widget build(IAuthCodePageWidgetModel wm) {
    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 33,
          height: 1,
          decoration: const BoxDecoration(),
        ),
      ],
    );

    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 33,
          height: 1,
          decoration: const BoxDecoration(),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 54,
        centerTitle: true,
        title: const Text('Войти'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Pinput(
                controller: wm.codeController,
                length: 4,
                separator: const SizedBox(
                  width: 23,
                ),
                autofillHints: const [AutofillHints.oneTimeCode],
                cursor: cursor,
                preFilledWidget: preFilledWidget,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
            SizedBox(
              height: 50,
              child: CustomFilledButton(
                onTap: () {
                  wm.confirmCode();
                },
                text: 'Подтвердить',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
