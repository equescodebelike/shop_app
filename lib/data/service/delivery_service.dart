import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/model/deliveries/get/delivery_model.dart';
import 'package:shop_app/url/catalog_url.dart';

part 'delivery_service.g.dart';

@RestApi()
abstract class DeliveryService {
  factory DeliveryService(Dio dio, {String baseUrl}) = _DeliveryService;


  @POST(CatalogUrl.deliveries)
  Future<List<Delivery>> deliveries();
}
