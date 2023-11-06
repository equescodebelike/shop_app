import 'package:flutter/foundation.dart';
import 'package:postgres/postgres.dart';
import 'package:shop_app/data_source/data_source.dart';
import 'package:shop_app/model/db_model/material_model.dart';

class DatabaseDataSource implements DataSource {
  DatabaseDataSource();

  final _connection = PostgreSQLConnection(
    'localhost',
    5432,
    'mydatabase',
    username: 'postgres',
    password: 'mypassword',
  );

  initPostgresConnection() async {
    await _connection.open();
    if (kDebugMode) {
      print("Database Connected!");
    }
  }

  @override
  Future<Material>? getMaterialById({required int id}) {
    
  }
}
