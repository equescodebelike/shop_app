import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shop_app/app.dart';
import 'package:shop_app/app_dependencies.dart';
import 'package:shop_app/data_source/db_repository.dart';
import 'package:shop_app/pages/favorites_page/favorites_redux.dart';
import 'package:shop_app/util/dio_util.dart';

void main() async {
  final store = Store<Set<int>>(appReducer, initialState: {});
  final db = DatabaseRepository();
  // db.insertSampleData();
  // db.connect();

  WidgetsFlutterBinding.ensureInitialized();
  await DioUtil().init();
  runApp(
    StoreProvider(
      store: store,
      child: AppDependencies(
        child: ShopApp(),
      ),
    ),
  );
}
