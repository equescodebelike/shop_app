import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/data/repository/auth_repository.dart';
import 'package:shop_app/data/repository/profile_repository.dart';
import 'package:shop_app/util/dio_util.dart';
import 'package:shop_app/util/wm_extensions.dart';
import 'profile_page_model.dart';
import 'profile_page_widget.dart';

abstract class IProfilePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  AuthRepository get authRepository;

  ProfileRepository get profileRepository;

  void onEditProfileTap();

  // void onBasketTap();

  // TextEditingController get brandController;

  // TextEditingController get addressController;

}

ProfilePageWidgetModel defaultProfilePageWidgetModelFactory(
    BuildContext context) {
  return ProfilePageWidgetModel(ProfilePageModel());
}

class ProfilePageWidgetModel
    extends WidgetModel<ProfilePageWidget, ProfilePageModel>
    with ThemeProvider
    implements IProfilePageWidgetModel {
  ProfilePageWidgetModel(ProfilePageModel model) : super(model);
  @override
  final profileRepository = DioUtil().profileRepository;

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    profileRepository.loadProfile();
  }

  @override
  void dispose() {
    super.dispose();
    profileRepository.dispose();
  }

  @override
  AuthRepository authRepository = AuthRepository(
    DioUtil().authService,
  );

  
  @override
  void onEditProfileTap() {
    // TODO: implement onEditProfileTap
  }
}
