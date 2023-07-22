import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/catalog_page/catalog_page.dart';
import 'package:shop_app/pages/catalog_page_update/catalog_page_widget.dart';
import 'package:shop_app/pages/catalog_page_update/catalog_page_wm.dart';
import 'package:shop_app/pages/favorites_page/favorites_page.dart';
import 'package:shop_app/pages/home_page/home_page.dart';
import 'package:shop_app/pages/onboarding_page/onboarding_page.dart';
import 'package:shop_app/pages/product_page/product_page.dart';
import 'package:shop_app/pages/profile_page/profile_page.dart';
import 'package:shop_app/pages/shopping_cart_page/shopping_cart_page.dart';
import 'package:shop_app/pages/show_case_page/show_case_page.dart';

part 'app_router.gr.dart';

//TODO: Initial change flag
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          // initial: true,
          page: OnBoardingRoute.page,
        ),
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: ShowCaseTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ShowCaseRoute.page,
                ),
              ],
            ),
            AutoRoute(
              
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CatalogRouteWidget.page,
                ),
              ],
            ),
            AutoRoute(
              page: BasketTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ShoppingCartRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: FavoritesTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: FavoritesRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: UserProfileTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ProfileRoute.page,
                ),
              ],
            ),
          ],
        )
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
