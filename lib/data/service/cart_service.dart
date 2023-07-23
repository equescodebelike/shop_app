import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_app/model/cart/cart_calculated_model.dart';
import 'package:shop_app/model/cart/cart_model.dart';
import 'package:shop_app/model/cart/cart_update_model.dart';
import 'package:shop_app/url/cart_url.dart';

part 'cart_service.g.dart';

@RestApi()
abstract class CartService {
  factory CartService(Dio dio, {String baseUrl}) = _CartService;

  @POST(CartUrl.cartCalculate)
  Future<CartModel> cartCalc({
    @Body() required CalculatedCartModel request,
  });

  @POST(CartUrl.cartCart)
  Future<CartModel> postCart({
    @Body() required CartUpdateModel request,
  });

  @PUT(CartUrl.cartCart)
  Future<CartModel> putCart({
    @Body() required CartUpdateModel request,
  });

  @DELETE(CartUrl.cartCart)
  Future<CartModel> deleteCart({
    @Body() required CartUpdateModel request,
  });
}
