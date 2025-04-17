import "package:auto_route/auto_route.dart";
import "package:foodappassignment8/core/navigation/app_router.gr.dart";
import "package:foodappassignment8/core/navigation/route_paths.dart";

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          path: RoutePaths.splash,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: RoutePaths.home,
          children: <AutoRoute>[
            AutoRoute(
              page: FoodsListRoute.page,
              path: RoutePaths.foods,
            ),
            AutoRoute(
              page: ProfileDisplayInfoRoute.page,
              path: RoutePaths.profileDisplay,
            ),
            AutoRoute(page: CommentsRoute.page, path: RoutePaths.comments),
            AutoRoute(page: WishlistRoute.page, path: RoutePaths.wishlist),
          ],
        ),
        AutoRoute(
          page: EditProfileRoute.page,
          path: RoutePaths.editProfile,
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: RoutePaths.settings,
        ),
        AutoRoute(
          page: FoodItemDetailRoute.page,
          path: RoutePaths.foodDetail,
        ),
      ];
}
