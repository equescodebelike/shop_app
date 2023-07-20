import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shop_app/data/service/catalog_service.dart';

class DioUtil {
  static final DioUtil _instance = DioUtil._internal();

  factory DioUtil() => _instance;

  DioUtil._internal();

  final Dio dio = Dio();
  // TODO: Add api
  late final CatalogService restService;
  // late final CharacterRepository characterRepository  = CharacterRepository(restService);
  // late final EpisodeRepository episodeRepository = EpisodeRepository(restService);
  // late final LocationRepository locationRepository = LocationRepository(restService);

  Future<void> init() async {
    const timeout = Duration(seconds: 60);

    dio.options
      ..baseUrl = 'https://farm.fbtw.ru/'
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    restService = CatalogService(dio);
  }
}
