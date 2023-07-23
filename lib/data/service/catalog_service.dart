import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products_request.dart';
import 'package:shop_app/model/catalog/post/catalog_products/catalog_products_response.dart';
import 'package:shop_app/url/catalog_url.dart';

part 'catalog_service.g.dart';

@RestApi()
abstract class CatalogService {
  factory CatalogService(Dio dio, {String baseUrl}) = _CatalogService;

  @POST(CatalogUrl.catalogProducts)
  Future<CatalogProductsResponse> getProducts({
    @Body() required CatalogProductsRequest request,
  });

}