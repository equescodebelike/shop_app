import 'package:postgres/postgres.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/model/db_model/material_model.dart';

class DatabaseRepository {
  final connection = PostgreSQLConnection(
    '192.168.32.1',
    5435,
    'dart_test',
    username: 'postgres',
    password: 'password',
  );

  // final PgEndpoint endpoint = PgEndpoint(
  //   host: '192.168.32.1',
  //   database: 'dart_test',
  //   username: 'postgres',
  //   password: 'password',
  // );

  // final PgPool pool = PgPool(
  //   [
  //     PgEndpoint(
  //       host: '192.168.32.1',
  //       database: 'dart_test',
  //       username: 'postgres',
  //       password: 'password',
  //     )
  //   ],
  //   poolSettings: const PgPoolSettings(
  //     maxConnectionCount: 5,
  //   ),
  // );

  Future<List<MaterialModel>> getAllMaterials() async {
    List<MaterialModel> materialList = [];
    await connection.open();
    try {
      var results =
          await connection.query('SELECT * FROM catalog.clothes_materials');

      for (var result in results) {
        int materialId = result[0] as int;
        String materialName = result[1] as String;

        MaterialModel material = MaterialModel(materialId, materialName);
        materialList.add(material);
      }
    } finally {
      await connection.close();
    }
    return materialList;
  }

  Future<List<ClothesModel>> getAllClothes() async {
    List<ClothesModel> clothesList = [];
    await connection.open();
    try {
      var results =
          await connection.query('SELECT * FROM catalog.clothes_models');

      for (var result in results) {
        int modelId = result[0] as int;
        String modelName = result[1] as String;
        String description = result[2] as String;

        ClothesModel model = ClothesModel(modelId, modelName, description);
        clothesList.add(model);
      }
    } finally {
      await connection.close();
    }
    return clothesList;
  }

  Future<List<ClothesModel>> getClothesByIds(List<int> ids) async {
    List<ClothesModel> clothesList = [];

    if (ids.isEmpty) {
      return clothesList;
    }

    await connection.open();

    try {
      String idList = ids.join(', ');

      var results = await connection.query('''
      SELECT * FROM catalog.clothes_models
      WHERE model_id IN ($idList)
      ''');

      for (var result in results) {
        int modelId = result[0] as int;
        String modelName = result[1] as String;
        String description = result[2] as String;

        ClothesModel model = ClothesModel(modelId, modelName, description);
        clothesList.add(model);
      }
    } finally {
      await connection.close();
    }

    return clothesList;
  }

  Future<void> insertSampleData() async {
    await connection.open();

    try {
      for (int i = 33; i <= 1000; i++) {
        await connection.query('''
        INSERT INTO catalog.clothes_models (model_name, description)
        VALUES (@modelName, @description)
      ''', substitutionValues: {
          'modelName': 'Model_$i',
          'description': 'Description for Model $i',
        });
      }
    } finally {
      await connection.close();
    }
  }

  Future<void> insertClothesModel(ClothesModel model) async {
    await connection.open();

    try {
      await connection.query('''
        INSERT INTO catalog.clothes_models (model_id, model_name, description)
        OVERRIDING SYSTEM VALUE
        VALUES (@modelId, @modelName, @description)
        ''', substitutionValues: {
        'modelId': model.modelId,
        'modelName': model.modelName,
        'description': model.description,
      });
    } finally {
      await connection.close();
    }
  }

  Future<void> deleteClothesModel(int modelId) async {
    await connection.open();

    try {
      await connection.query('''
      DELETE FROM catalog.clothes_media
      WHERE model_id = @modelId
      ''', substitutionValues: {
        'modelId': modelId,
      });
      await connection.query('''
      DELETE FROM catalog.clothes_patterns
      WHERE model_id = @modelId
      ''', substitutionValues: {
        'modelId': modelId,
      });
      await connection.query('''
      DELETE FROM catalog.clothes_models
      WHERE model_id = @modelId
      ''', substitutionValues: {
        'modelId': modelId,
      });
    } finally {
      await connection.close();
    }
  }
}
