import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data_source/db_repository.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/model/db_model/media_model.dart';
import 'package:shop_app/model/db_model/pattern_model.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';

@RoutePage()
class EditProductPage extends StatefulWidget {
  final ClothesModel product;
  final MediaModel media;
  final PatternModel pattern;

  const EditProductPage({
    Key? key,
    required this.product,
    required this.media,
    required this.pattern,
  }) : super(key: key);

  @override
  _EditProductPageState createState() => _EditProductPageState();
}

class _EditProductPageState extends State<EditProductPage> {
  final TextEditingController modelNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController tutorialController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize controllers with existing data
    modelNameController.text = widget.product.modelName;
    descriptionController.text = widget.product.description;
    tutorialController.text = widget.pattern.tutorial;
    sizeController.text = widget.pattern.size;
    imageController.text = widget.media.photoUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: modelNameController,
              decoration: const InputDecoration(labelText: 'Model Name'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: tutorialController,
              decoration: const InputDecoration(labelText: 'Tutorial'),
            ),
            TextField(
              controller: sizeController,
              decoration: const InputDecoration(labelText: 'Size'),
            ),
            TextField(
              controller: imageController,
              decoration: const InputDecoration(labelText: 'Image URL'),
            ),
            const SizedBox(height: 16),
            Center(
              child: CustomFilledButton(
                onTap: () async {
                  final databaseRepo = DatabaseRepository();

                  final editedModel = ClothesModel(
                    widget.product.modelId,
                    modelNameController.text,
                    descriptionController.text,
                  );

                  final editedMedia = MediaModel(
                    photoId: widget.media.photoId,
                    modelId: widget.media.modelId,
                    photoUrl: imageController.text,
                  );

                  final editedPattern = PatternModel(
                    patternId: widget.pattern.patternId,
                    size: sizeController.text,
                    patternUsage: widget.pattern.patternUsage,
                    tutorial: tutorialController.text,
                    materialId: widget.pattern.materialId,
                    modelId: widget.pattern.modelId,
                  );

                  await databaseRepo.updateClothesModel(editedModel);
                  await databaseRepo.updateMediaModel(editedMedia);
                  await databaseRepo.updatePatternModel(editedPattern);

                  context.router.pop();
                },
                text: 'Save Changes',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
