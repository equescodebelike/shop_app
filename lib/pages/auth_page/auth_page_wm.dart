import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/repository/auth_repository.dart';
import 'package:shop_app/model/auth/auth_email_part1_request.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/extensions/snack_bar.dart';
import 'package:shop_app/util/dio_util.dart';
import 'package:shop_app/util/wm_extensions.dart';
import 'auth_page_model.dart';
import 'auth_page_widget.dart';

//TODO: SnackBar
abstract class IAuthPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get emailController;

  AuthRepository get authRepository;

  Future<void> onSendCode();
}

AuthPageWidgetModel defaultAuthPageWidgetModelFactory(BuildContext context) {
  return AuthPageWidgetModel(AuthPageModel());
}

class AuthPageWidgetModel extends WidgetModel<AuthPageWidget, AuthPageModel>
    with ThemeProvider
    implements IAuthPageWidgetModel {
  @override
  final emailController = TextEditingController();

  @override
  AuthRepository authRepository = AuthRepository(
    DioUtil().authService,
  );

  AuthPageWidgetModel(AuthPageModel model) : super(model);

  @override
  Future<void> onSendCode() async {
    final request = emailController.text;

    try {
      await authRepository.emailPart1(
        request: AuthEmailPart1Request(
          email: request,
          digits: 4,
        ),
      );
      router.push(
        AuthCodeRouteWidget(email: emailController.text),
      );
    } on DioException catch (error) {
      if (RegExp(r'[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
          .hasMatch(request) == false) {
        context.showSnackBar('Введите Email');
        return;
      }
      if (error.response?.statusCode == 451) {
        // router.push(RegisterRoute(email: emailController.text));
        context.showSnackBar('Пользователь с такой почтой не найден!');
        return;
      }

      throw Exception(
        error.response?.data['message'],
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
