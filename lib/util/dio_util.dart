import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shop_app/data/interceptor.dart';
import 'package:shop_app/data/repository/auth_repository.dart';
import 'package:shop_app/data/repository/cart_repository.dart';
import 'package:shop_app/data/repository/profile_repository.dart';
import 'package:shop_app/data/repository/token_repository.dart';
import 'package:shop_app/data/service/auth_service.dart';
import 'package:shop_app/data/service/cart_service.dart';
import 'package:shop_app/data/service/catalog_service.dart';

class DioUtil {
  static final DioUtil _instance = DioUtil._internal();

  factory DioUtil() => _instance;

  DioUtil._internal();

  final Dio dio = Dio();
  // TODO: Add api
  // ..contentType = 'application/json' check!
  late final AuthService authService = AuthService(dio);
  late final CartService _cartService = CartService(dio);
  late final CatalogService catalogService = CatalogService(dio);
  late final ProfileRepository profileRepository =
      ProfileRepository(tokenRepository, AuthRepository(authService));
  late final CartRepository cartRepository = CartRepository(
    _cartService,
    profileRepository,
  );

  final TokenRepository tokenRepository = TokenRepository();

  Future<void> init() async {
    const timeout = Duration(seconds: 60);

    dio.options
      ..baseUrl = 'https://farm.fbtw.ru/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..contentType = 'application/json'
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();

    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );
    profileRepository.init();
    cartRepository.init();
  }
}
