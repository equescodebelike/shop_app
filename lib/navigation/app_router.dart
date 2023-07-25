import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/model/catalog/get/product/product_count.dart';
import 'package:shop_app/pages/auth_code_page/auth_code_page_widget.dart';
import 'package:shop_app/pages/auth_code_page/auth_code_page_wm.dart';
import 'package:shop_app/pages/auth_page/auth_page_widget.dart';
import 'package:shop_app/pages/auth_page/auth_page_wm.dart';
import 'package:shop_app/pages/catalog_page/catalog_page_widget.dart';
import 'package:shop_app/pages/catalog_page/catalog_page_wm.dart';
import 'package:shop_app/pages/favorites_page/favorite_page.dart';
import 'package:shop_app/pages/home_page/home_page.dart';
import 'package:shop_app/pages/onboarding_page/onboarding_page.dart';
import 'package:shop_app/pages/order_page/order_page.dart';
import 'package:shop_app/pages/product_page/product_page.dart';
import 'package:shop_app/pages/profile_page/profile_page_widget.dart';
import 'package:shop_app/pages/profile_page/profile_page_wm.dart';
import 'package:shop_app/pages/shopping_cart_page/cart_page_widget.dart';
import 'package:shop_app/pages/shopping_cart_page/cart_page_wm.dart';
import 'package:shop_app/pages/show_case_page/show_case_page.dart';

import '../model/catalog/get/product/product.dart';

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
                AutoRoute(
                  page: ProductRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: BasketTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: CartRouteWidget.page,
                ),
                AutoRoute(
                  page: OrderRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: FavoritesTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: FavoriteRouteUpdate.page,
                ),
              ],
            ),
            AutoRoute(
              page: UserProfileTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: ProfileRouteWidget.page,
                ),
                AutoRoute(
                  page: AuthRouteWidget.page,
                ),
                AutoRoute(
                  page: AuthCodeRouteWidget.page,
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
