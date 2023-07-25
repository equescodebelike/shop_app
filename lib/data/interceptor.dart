import 'package:dio/dio.dart';
import 'package:shop_app/data/repository/token_repository.dart';

/// Interceptor for working with JWT tokens, updating and saving them.
/// Requires [Dio] to work.

class JWTInterceptor extends QueuedInterceptor {
  /// Create instance of [JWTInterceptor].
  JWTInterceptor({
    required this.repository,
    required Dio dio,
  });

  final TokenRepository repository;

  /// JWT token.
  String? get _accessToken => repository.accessToken;

  /// Add JWT authorization token to any request, if available.
  @override
  void onRequest(options, handler) {
    if (_accessToken != null) {
      options.headers['Authorization'] = 'Bearer $_accessToken';
    }

    return super.onRequest(options, handler);
  }

  /// Save tokens received after authorization.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.requestOptions.path == '/auth/email/part2') {
      repository.saveTokens(
        accessToken: response.data['access_token'],
        refreshToken: response.data['refresh_token'],
      );
    }

    super.onResponse(response, handler);
  }

}
