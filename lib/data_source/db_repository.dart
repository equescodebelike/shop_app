import 'package:postgres/postgres.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/model/db_model/material_model.dart';
import 'package:shop_app/model/db_model/media_model.dart';
import 'package:shop_app/model/db_model/pattern_model.dart';

class DatabaseRepository {
  PostgreSQLConnection connect() {
    final connection = PostgreSQLConnection(
      '192.168.32.1',
      5435,
      'dart_test',
      username: 'postgres',
      password: 'password',
    );
    return connection;
  }

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
    final connection = connect();
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

  Future<List<ClothesModel>> getAllClothes(String orderBy) async {
    final connection = connect();
    List<ClothesModel> clothesList = [];
    await connection.open();
    try {
      var results = await connection.query(
        'SELECT * FROM catalog.clothes_models ORDER BY $orderBy',
      );

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

  Future<PatternModel?> getPatternByModelId(int modelId) async {
    final connection = connect();
    PatternModel? pattern;

    await connection.open();

    try {
      var results = await connection.query('''
      SELECT * FROM catalog.clothes_patterns
      WHERE model_id = @modelId
      LIMIT 1
      ''', substitutionValues: {
        'modelId': modelId,
      });

      if (results.isNotEmpty) {
        var result = results.first;
        int patternId = result[0] as int;
        String size = result[1] as String;
        double patternUsage = result[2] as double;
        String tutorial = result[3] as String;
        int materialId = result[4] as int;

        pattern = PatternModel(
          patternId: patternId,
          size: size,
          patternUsage: patternUsage,
          tutorial: tutorial,
          materialId: materialId,
          modelId: modelId,
        );
      }
    } finally {
      await connection.close();
    }

    return pattern;
  }

  Future<MediaModel?> getMediaByModelId(int modelId) async {
    final connection = connect();
    MediaModel? media;

    await connection.open();

    try {
      var results = await connection.query('''
      SELECT * FROM catalog.clothes_media
      WHERE model_id = @modelId
      LIMIT 1
      ''', substitutionValues: {
        'modelId': modelId,
      });

      if (results.isNotEmpty) {
        var result = results.first;
        int photoId = result[0] as int;
        int modelId = result[1] as int;
        String photoUrl = result[2] as String;

        media =
            MediaModel(photoId: photoId, modelId: modelId, photoUrl: photoUrl);
      }
    } finally {
      await connection.close();
    }

    return media;
  }

  Future<List<ClothesModel>> getClothesByIds(List<int> ids) async {
    final connection = connect();
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
    final connection = connect();
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

  Future<void> insertClothesPattern(PatternModel pattern) async {
    final connection = connect();

    await connection.open();

    try {
      await connection.query('''
      INSERT INTO catalog.clothes_patterns (pattern_id, size, pattern_usage, tutorial, material_id, model_id)
      VALUES (@patternId, @size, @patternUsage, @tutorial, @materialId, @modelId)
      ''', substitutionValues: {
        'patternId': pattern.patternId,
        'size': pattern.size,
        'patternUsage': pattern.patternUsage,
        'tutorial': pattern.tutorial,
        'materialId': pattern.materialId,
        'modelId': pattern.modelId,
      });
    } finally {
      await connection.close();
    }
  }

  Future<void> updateClothesModel(ClothesModel updatedModel) async {
    final connection = connect();
    await connection.open();

    try {
      await connection.query('''
      UPDATE catalog.clothes_models
      SET model_name = @modelName, description = @description
      WHERE model_id = @modelId
    ''', substitutionValues: {
        'modelId': updatedModel.modelId,
        'modelName': updatedModel.modelName,
        'description': updatedModel.description,
      });
    } finally {
      await connection.close();
    }
  }

  Future<void> insertClothesModel(ClothesModel model) async {
    final connection = connect();
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
    final connection = connect();
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

  Future<void> insertClothesMedia(MediaModel media) async {
    final connection = connect();

    await connection.open();

    try {
      await connection.query('''
      INSERT INTO catalog.clothes_media (photo_id, model_id, photo_url)
      VALUES (@photoId, @modelId, @photoUrl)
    ''', substitutionValues: {
        'photoId': media.photoId,
        'modelId': media.modelId,
        'photoUrl': media.photoUrl,
      });
    } finally {
      await connection.close();
    }
  }

  Future<bool> doesModelExist(String modelId) async {
    final connection = connect();

    await connection.open();

    try {
      final intModelId = int.tryParse(modelId);

      if (intModelId == null) {
        return true;
      }

      final result = await connection.query(
        '''
      SELECT COUNT(*) AS count
      FROM catalog.clothes_models
      WHERE model_id = $modelId
      ''',
        substitutionValues: {'modelId': intModelId},
      );

      return result.isEmpty;
    } finally {
      await connection.close();
    }
  }

  Future<void> updateMediaModel(MediaModel media) async {
    final connection = connect();

    await connection.open();

    try {
      await connection.query('''
      UPDATE catalog.clothes_media
      SET photo = @photo
      WHERE photo_id = @photoId AND model_id = @modelId
    ''', substitutionValues: {
        'photoId': media.photoId,
        'modelId': media.modelId,
        'photo': media.photoUrl,
      });
    } finally {
      await connection.close();
    }
  }

  Future<void> updatePatternModel(PatternModel pattern) async {
    final connection = connect();

    await connection.open();

    try {
      await connection.query('''
      UPDATE catalog.clothes_patterns
      SET size = @size, tutorial = @tutorial
      WHERE pattern_id = @patternId AND model_id = @modelId
    ''', substitutionValues: {
        'patternId': pattern.patternId,
        'modelId': pattern.modelId,
        'size': pattern.size,
        'tutorial': pattern.tutorial,
      });
    } finally {
      await connection.close();
    }
  }
}
