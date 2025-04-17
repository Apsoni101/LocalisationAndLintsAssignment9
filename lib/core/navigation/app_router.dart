import 'package:auto_route/auto_route.dart';
import 'package:foodappassignment8/core/navigation/route_paths.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: SplashRoute.page, initial: true, path: RoutePaths.splash),
        AutoRoute(
          page: HomeRoute.page,
          path: RoutePaths.home,
          children: [
            AutoRoute(page: FoodsListRoute.page, path: RoutePaths.foods),
            AutoRoute(page: UserProfileRoute.page, path: RoutePaths.profile),
            AutoRoute(page: CommentsRoute.page, path: RoutePaths.comments),
            AutoRoute(page: WishlistRoute.page, path: RoutePaths.wishlist),
          ],
        ),
        AutoRoute(
          page: FoodItemDetailRoute.page,
          path: RoutePaths.foodDetail,
        ),
      ];
}
