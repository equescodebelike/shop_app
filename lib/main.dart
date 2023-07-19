import 'package:flutter/material.dart';
import 'package:shop_app/app.dart';
import 'package:shop_app/app_dependencies.dart';
import 'package:shop_app/util/dio_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioUtil().init();
  runApp(
    const AppDependencies(
      child: ShopApp(),
    ),
  );
}
