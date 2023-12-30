import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shop_app/data_source/db_repository.dart';
import 'package:shop_app/model/db_model/clothes_model.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';

@RoutePage()
class EditProductPage extends StatelessWidget {
  final TextEditingController modelNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController tutorialController = TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final ClothesModel product;

  EditProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set the initial values of the controllers to the product details
    modelNameController.text = product.modelName;
    descriptionController.text = product.description;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Изменить модель'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField for editing the product name
            TextField(
              controller: modelNameController,
              decoration: const InputDecoration(labelText: 'Название'),
            ),
            // TextField for editing the product description
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Описание'),
            ),
            // You can add more TextFields for other details like tutorial, size, and image

            const SizedBox(height: 16),
            Center(
              child: CustomFilledButton(
                onTap: () async {
                  // Save the changes to the database
                  final databaseRepo = DatabaseRepository();

                  final editedModel = ClothesModel(
                    product.modelId,
                    modelNameController.text,
                    descriptionController.text,
                    // Add other properties as needed
                  );

                  await databaseRepo.updateClothesModel(editedModel);

                  context.router.pop();
                },
                text: 'Сохранить изменения',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
