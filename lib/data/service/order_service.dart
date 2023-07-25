import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/model/order/order_model.dart';
import 'package:shop_app/model/order/order_request.dart';
import 'package:shop_app/url/catalog_url.dart';

part 'order_service.g.dart';

@RestApi()
abstract class OrderService {
  factory OrderService(Dio dio, {String baseUrl}) = _OrderService;

  @POST(CatalogUrl.orderOrder)
  Future<Order> postOrder({
    @Body() required OrderRequest request,
  });

}
