import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:shop_app/model/payment/payment_model.dart';
import 'package:shop_app/model/payment/payment_request.dart';
import 'package:shop_app/url/catalog_url.dart';

part 'payment_service.g.dart';

@RestApi()
abstract class PaymentService {
  factory PaymentService(Dio dio, {String baseUrl}) = _PaymentService;

  @POST(CatalogUrl.payments)
  Future<List<Payment>> payments({
    @Body() PaymentRequest? request,
  });

}
