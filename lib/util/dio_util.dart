import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shop_app/data/interceptor.dart';
import 'package:shop_app/data/repository/token_repository.dart';
import 'package:shop_app/data/service/auth_service.dart';
import 'package:shop_app/data/service/catalog_service.dart';

class DioUtil {
  static final DioUtil _instance = DioUtil._internal();

  factory DioUtil() => _instance;

  DioUtil._internal();

  final Dio dio = Dio();
  // TODO: Add api
  late final AuthService authService = AuthService(dio);
  late final CatalogService catalogService = CatalogService(dio);
  final TokenRepository tokenRepository = TokenRepository();

  Future<void> init() async {
    const timeout = Duration(seconds: 60);

    dio.options
      ..baseUrl = 'https://farm.fbtw.ru/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();

    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );

  }
}
