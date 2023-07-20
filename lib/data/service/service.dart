import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/model/catalog/get/categories/categories_model.dart';
import 'package:shop_app/model/catalog/get/product/product_model.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products.dart';

part 'service.g.dart';

@RestApi()
abstract class AppClient {
  factory AppClient(Dio dio, {String baseUrl}) = _AppClient;

  @POST("/catalog/products/")
  Future<ProductModel> catalogProductsCreate({
    @Body() ProductsSerializerRequest? productsSerializerRequest,
  });

  @GET("/catalog/categories/")
  Future<List<Category>> catalogCategoriesList({
    @Query("parent_id") int? parentId,
    @Query("only_leaf") bool onlyLeaf = false,
  });

  @GET("/catalog/product/")
  Future<ProductModel> catalogProductRead({
    @Query("product_id") required int productId,
    @Query("city_fias") String? cityFias,
  });
}