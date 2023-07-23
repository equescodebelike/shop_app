import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/profile/profile.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';

import 'profile_page_wm.dart';

@RoutePage()
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Профиль'),
            centerTitle: true,
            actions: const [],
          ),
          body: StreamBuilder<Profile?>(
            initialData: wm.profileRepository.profile.valueOrNull,
            stream: wm.profileRepository.profile.stream,
            builder: (context, profileSnapshot) {
              final isLogin = profileSnapshot.hasData &&
                  profileSnapshot.data!.email.isNotEmpty;
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      'Мои данные',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 50,
                      child: CustomFilledButton(
                        onTap: () {
                          if (!isLogin) {
                            context.router.push(AuthRouteWidget());
                          } else {
                            wm.profileRepository.logout();
                          }
                        },
                        text: !isLogin ? 'Войти' : 'Выйти',
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

}
