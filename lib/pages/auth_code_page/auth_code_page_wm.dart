import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/repository/auth_repository.dart';
import 'package:shop_app/model/auth/auth_email_part2_request.dart';
import 'package:shop_app/util/dio_util.dart';
import 'package:shop_app/util/wm_extensions.dart';
import 'auth_code_page_model.dart';
import 'auth_code_page_widget.dart';

abstract class IAuthCodePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get codeController;

  Future<void> confirmCode();
}

AuthCodePageWidgetModel defaultAuthCodePageWidgetModelFactory(
    BuildContext context) {
  return AuthCodePageWidgetModel(AuthCodePageModel());
}

class AuthCodePageWidgetModel
    extends WidgetModel<AuthCodePageWidget, AuthCodePageModel>
    with ThemeProvider
    implements IAuthCodePageWidgetModel {
  @override
  TextEditingController codeController = TextEditingController();

  final authRepository = AuthRepository(
    DioUtil().authService,
  );

  @override
  Future<void> confirmCode() async {
    try{
      await authRepository.emailPart2(
        request: AuthEmailPart2Request(
          email: widget.email,
          code: codeController.text,
        ),
      );
      router.popUntilRoot();
      
    }catch(e){
      throw Exception(e);
    }

  }

  AuthCodePageWidgetModel(AuthCodePageModel model) : super(model);
}
