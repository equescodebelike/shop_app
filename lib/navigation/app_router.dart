import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/catalog_page/catalog_page.dart';
import 'package:shop_app/pages/home_page/home_page.dart';
import 'package:shop_app/pages/onboarding_page/onboarding_page.dart';
import 'package:shop_app/pages/show_case_page/show_case_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: OnBoardingRoute.page,
        ),
        AutoRoute(
          //initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              //initial: true,
              page: ShowCaseTab.page,
              children: [
                AutoRoute(
                  //initial: true,
                  page: ShowCaseRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: CatalogTab.page,
              
            ),
            AutoRoute(
              page: BasketTab.page,
              
            ),
            AutoRoute(
              page: FavoritesTab.page,
              
            ),
            AutoRoute(
              page: UserProfileTab.page,
              
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'FavoritesTab')
class FavoritesTabPage extends AutoRouter {
  const FavoritesTabPage({super.key});
}

@RoutePage(name: 'ShowCaseTab')
class ShowCaseTabPage extends AutoRouter {
  const ShowCaseTabPage({super.key});
}

@RoutePage(name: 'BasketTab')
class BasketTabPage extends AutoRouter {
  const BasketTabPage({super.key});
}

@RoutePage(name: 'UserProfileTab')
class UserProfileTabPage extends AutoRouter {
  const UserProfileTabPage({super.key});
}
