import 'package:shop_app/data/repository/auth_repository.dart';
import 'package:shop_app/data/repository/token_repository.dart';
import 'package:shop_app/model/profile/profile.dart';
import 'package:shop_app/util/value_stream_wrapper.dart';

class ProfileRepository {
  final TokenRepository repository;
  final AuthRepository authRepository;
  final ValueStreamWrapper<Profile?> profile = ValueStreamWrapper();

  ProfileRepository(this.repository, this.authRepository);

  void dispose() {
    repository.removeListener(_listenTokenStatus);
    profile.dispose();
  }

  void init() {
    repository.addListener(_listenTokenStatus);
  }

  void _listenTokenStatus() {
    if (profile.valueOrNull != null && !repository.auth) {
      profile.add(null);
    } else {
      loadProfile();
    }
  }

  Future<void> logout() async {
    await repository.deleteTokens();
    profile.add(null);
  }

  Future<void> loadProfile() async {
    final result = await authRepository.getUser();
    profile.add(result);
  }

}
