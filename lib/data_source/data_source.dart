import 'package:shop_app/model/db_model/material_model.dart';

abstract class DataSource {
  DataSource();

  Future<Material>? getMaterialById({required int id});
}
