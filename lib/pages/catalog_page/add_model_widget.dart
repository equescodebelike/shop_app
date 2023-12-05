import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data_source/db_repository.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/model/db_model/pattern_model.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';

@RoutePage()
class AddClothesModelPage extends StatelessWidget {
  final TextEditingController modelIdController = TextEditingController();
  final TextEditingController modelNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController tutorialController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();

  AddClothesModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Новая модель'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: modelIdController,
              decoration: const InputDecoration(labelText: 'ID модели'),
            ),
            TextField(
              controller: modelNameController,
              decoration: const InputDecoration(labelText: 'Название'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Описание'),
            ),
            TextField(
              controller: tutorialController,
              decoration: const InputDecoration(labelText: 'Процесс создания'),
            ),
            TextField(
              controller: sizeController,
              decoration: const InputDecoration(labelText: 'Размер'),
            ),
            const SizedBox(height: 16),
            CustomFilledButton(
              onTap: () {
                final databaseRepo = DatabaseRepository();
                final model = ClothesModel(
                  int.parse(modelIdController.text),
                  modelNameController.text,
                  descriptionController.text,
                );
                final pattern = PatternModel(
                  patternId: model.modelId,
                  patternUsage: 0,
                  modelId: model.modelId,
                  size: sizeController.text,
                  tutorial: tutorialController.text,
                  materialId: 1,
                );
                databaseRepo.insertClothesModel(model);
                databaseRepo.insertClothesPattern(pattern);
                context.router.pop();
              },
              text: 'Добавить',
            ),
          ],
        ),
      ),
    );
  }
}
