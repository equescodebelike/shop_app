import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shop_app/model/auth/auth_email_part1_request.dart';
import 'package:shop_app/model/auth/auth_email_part2_request.dart';
import 'package:shop_app/model/auth/auth_email_part2_response.dart';
import 'package:shop_app/model/profile/profile.dart';
import 'package:shop_app/url/auth_url.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(AuthUrl.authEmailPart1)
  Future<void> authEmailPart1({
    @Body() required AuthEmailPart1Request request,
  });

  @POST(AuthUrl.authEmailPart2)
  Future<AuthEmailPart2Response> authEmailPart2({
    @Body() required AuthEmailPart2Request request,
  });

  @GET(AuthUrl.authUser)
  Future<Profile> getUser();

}
