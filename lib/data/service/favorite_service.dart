import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shop_app/model/catalog/get/product/product.dart';
import 'package:shop_app/model/favorite/favorite_request.dart';
import 'package:shop_app/url/favorite_url.dart';

part 'favorite_service.g.dart';

@RestApi()
abstract class FavoriteService {
  factory FavoriteService(Dio dio, {String baseUrl}) = _FavoriteService;

  @GET(FavoriteUrl.favorites)
  Future<List<Product>> favourites();

  @POST(FavoriteUrl.favorites)
  Future<void> postFavourite({
    @Body() required FavoriteRequest request,
  });

  @DELETE(FavoriteUrl.favorites)
  Future<void> deleteFavourite({
    @Body() required FavoriteRequest request,
  });
}