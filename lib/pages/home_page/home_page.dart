import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/assets_icons/app_icons.g.dart';
import 'package:shop_app/navigation/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      lazyLoad: false,
      routes: const [
        ShowCaseTab(),
        CatalogTab(),
        BasketTab(),
        FavoritesTab(),
        UserProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CupertinoTabBar(
          height: 49,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                ShopAppIcons.showcase,
              ),
              label: 'Витрина', 
            ),
            BottomNavigationBarItem(
              icon: Icon(
                ShopAppIcons.catalog,
              ),
              label: 'Каталог',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                ShopAppIcons.cart,
              ),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                ShopAppIcons.heart,
              ),
              label: 'Избранное',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                ShopAppIcons.profile,
              ),
              label: 'Профиль',
            ),
          ],
        );
      },
    );
  }
}