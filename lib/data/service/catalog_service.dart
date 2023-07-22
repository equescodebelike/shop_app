import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/model/catalog/get/categories/categories_model.dart';
import 'package:shop_app/model/catalog/get/product/product_model.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products_request.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products_response.dart';
import 'package:shop_app/url/catalog_url.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @POST(CatalogUrl.catalogProducts)
  Future<Products> catalogProductsCreate({
    @Body() ProductsSerializerRequest? productsSerializerRequest,
  });

  @GET(CatalogUrl.catalogCategories)
  Future<List<Category>> catalogCategoriesList({
    @Query("parent_id") int? parentId,
    @Query("only_leaf") bool onlyLeaf = false,
  });

  @POST(CatalogUrl.catalogProducts)
  Future<CatalogProductsResponse> getProducts({
    @Query('page') int? page,
    @Query('size') int? size,
    @Body() required CatalogProductsRequest request,
  });

  @GET(CatalogUrl.catalogProduct)
  Future<ProductModel> getProduct({
    @Query('product_id') int? productId,
    @Query('city_fias') String? cityFias,
  });
}