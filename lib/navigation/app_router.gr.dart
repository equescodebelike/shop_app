// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    FavoritesTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritesTabPage(),
      );
    },
    ShowCaseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowCaseTabPage(),
      );
    },
    BasketTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BasketTabPage(),
      );
    },
    UserProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserProfileTabPage(),
      );
    },
    AuthCodeRouteWidget.name: (routeData) {
      final args = routeData.argsAs<AuthCodeRouteWidgetArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthCodePageWidget(
          key: args.key,
          email: args.email,
          wmFactory: args.wmFactory,
        ),
      );
    },
    AuthRouteWidget.name: (routeData) {
      final args = routeData.argsAs<AuthRouteWidgetArgs>(
          orElse: () => const AuthRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductPage(
          key: args.key,
          product: args.product,
          productId: args.productId,
        ),
      );
    },
    ProfileRouteWidget.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteWidgetArgs>(
          orElse: () => const ProfileRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfilePageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    ShowCaseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowCasePage(),
      );
    },
    CatalogRouteWidget.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CatalogRouteWidgetArgs>(
          orElse: () => CatalogRouteWidgetArgs(
                title: queryParams.optString('title'),
                categotyId: queryParams.optInt('categotyId'),
                productIds: queryParams.get(
                  'productIds',
                  const <int>[],
                ),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogPageWidget(
          key: args.key,
          title: args.title,
          categotyId: args.categotyId,
          productIds: args.productIds,
          wmFactory: args.wmFactory,
        ),
      );
    },
    FavoriteRouteUpdate.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritePageUpdate(),
      );
    },
    CartRouteWidget.name: (routeData) {
      final args = routeData.argsAs<CartRouteWidgetArgs>(
          orElse: () => const CartRouteWidgetArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartPageWidget(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
  };
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoritesTabPage]
class FavoritesTab extends PageRouteInfo<void> {
  const FavoritesTab({List<PageRouteInfo>? children})
      : super(
          FavoritesTab.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShowCaseTabPage]
class ShowCaseTab extends PageRouteInfo<void> {
  const ShowCaseTab({List<PageRouteInfo>? children})
      : super(
          ShowCaseTab.name,
          initialChildren: children,
        );

  static const String name = 'ShowCaseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BasketTabPage]
class BasketTab extends PageRouteInfo<void> {
  const BasketTab({List<PageRouteInfo>? children})
      : super(
          BasketTab.name,
          initialChildren: children,
        );

  static const String name = 'BasketTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserProfileTabPage]
class UserProfileTab extends PageRouteInfo<void> {
  const UserProfileTab({List<PageRouteInfo>? children})
      : super(
          UserProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthCodePageWidget]
class AuthCodeRouteWidget extends PageRouteInfo<AuthCodeRouteWidgetArgs> {
  AuthCodeRouteWidget({
    Key? key,
    required String email,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthCodePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthCodeRouteWidget.name,
          args: AuthCodeRouteWidgetArgs(
            key: key,
            email: email,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthCodeRouteWidget';

  static const PageInfo<AuthCodeRouteWidgetArgs> page =
      PageInfo<AuthCodeRouteWidgetArgs>(name);
}

class AuthCodeRouteWidgetArgs {
  const AuthCodeRouteWidgetArgs({
    this.key,
    required this.email,
    this.wmFactory = defaultAuthCodePageWidgetModelFactory,
  });

  final Key? key;

  final String email;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthCodeRouteWidgetArgs{key: $key, email: $email, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [AuthPageWidget]
class AuthRouteWidget extends PageRouteInfo<AuthRouteWidgetArgs> {
  AuthRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultAuthPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRouteWidget.name,
          args: AuthRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRouteWidget';

  static const PageInfo<AuthRouteWidgetArgs> page =
      PageInfo<AuthRouteWidgetArgs>(name);
}

class AuthRouteWidgetArgs {
  const AuthRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultAuthPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'AuthRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductPage]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required Product product,
    required int productId,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            product: product,
            productId: productId,
          ),
          rawPathParams: {'productId': productId},
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.product,
    required this.productId,
  });

  final Key? key;

  final Product product;

  final int productId;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product, productId: $productId}';
  }
}

/// generated route for
/// [ProfilePageWidget]
class ProfileRouteWidget extends PageRouteInfo<ProfileRouteWidgetArgs> {
  ProfileRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultProfilePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRouteWidget.name,
          args: ProfileRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRouteWidget';

  static const PageInfo<ProfileRouteWidgetArgs> page =
      PageInfo<ProfileRouteWidgetArgs>(name);
}

class ProfileRouteWidgetArgs {
  const ProfileRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultProfilePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'ProfileRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ShowCasePage]
class ShowCaseRoute extends PageRouteInfo<void> {
  const ShowCaseRoute({List<PageRouteInfo>? children})
      : super(
          ShowCaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShowCaseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogPageWidget]
class CatalogRouteWidget extends PageRouteInfo<CatalogRouteWidgetArgs> {
  CatalogRouteWidget({
    Key? key,
    String? title,
    int? categotyId,
    List<int> productIds = const <int>[],
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCatalogPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogRouteWidget.name,
          args: CatalogRouteWidgetArgs(
            key: key,
            title: title,
            categotyId: categotyId,
            productIds: productIds,
            wmFactory: wmFactory,
          ),
          rawQueryParams: {
            'title': title,
            'categotyId': categotyId,
            'productIds': productIds,
          },
          initialChildren: children,
        );

  static const String name = 'CatalogRouteWidget';

  static const PageInfo<CatalogRouteWidgetArgs> page =
      PageInfo<CatalogRouteWidgetArgs>(name);
}

class CatalogRouteWidgetArgs {
  const CatalogRouteWidgetArgs({
    this.key,
    this.title,
    this.categotyId,
    this.productIds = const <int>[],
    this.wmFactory = defaultCatalogPageWidgetModelFactory,
  });

  final Key? key;

  final String? title;

  final int? categotyId;

  final List<int> productIds;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CatalogRouteWidgetArgs{key: $key, title: $title, categotyId: $categotyId, productIds: $productIds, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [FavoritePageUpdate]
class FavoriteRouteUpdate extends PageRouteInfo<void> {
  const FavoriteRouteUpdate({List<PageRouteInfo>? children})
      : super(
          FavoriteRouteUpdate.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRouteUpdate';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartPageWidget]
class CartRouteWidget extends PageRouteInfo<CartRouteWidgetArgs> {
  CartRouteWidget({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = defaultCartPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          CartRouteWidget.name,
          args: CartRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRouteWidget';

  static const PageInfo<CartRouteWidgetArgs> page =
      PageInfo<CartRouteWidgetArgs>(name);
}

class CartRouteWidgetArgs {
  const CartRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultCartPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'CartRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}
