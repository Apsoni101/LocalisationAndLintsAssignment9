// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:foodappassignment8/feature/comments/presentation/screens/comments_screen.dart'
    as _i1;
import 'package:foodappassignment8/feature/common/presentation/screen/home_screen.dart'
    as _i5;
import 'package:foodappassignment8/feature/food_detail/presentation%20/screens/food_item_detail_screen.dart'
    as _i3;
import 'package:foodappassignment8/feature/food_listing/presentation%20/screens/foods_list_screen.dart'
    as _i4;
import 'package:foodappassignment8/feature/settings/presentation/screens/settings_screen.dart'
    as _i7;
import 'package:foodappassignment8/feature/splash/presentation/screens/splash_screen.dart'
    as _i8;
import 'package:foodappassignment8/feature/user_profile/presentation/screens/edit_profile_screen.dart'
    as _i2;
import 'package:foodappassignment8/feature/user_profile/presentation/screens/profile_display_info_screen.dart'
    as _i6;
import 'package:foodappassignment8/feature/wishlist/presentation/screens/wishlist_screen.dart'
    as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    CommentsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CommentsScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EditProfileScreen(),
      );
    },
    FoodItemDetailRoute.name: (routeData) {
      final args = routeData.argsAs<FoodItemDetailRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.FoodItemDetailScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    FoodsListRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FoodsListScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    ProfileDisplayInfoRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileDisplayInfoScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashScreen(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CommentsScreen]
class CommentsRoute extends _i10.PageRouteInfo<void> {
  const CommentsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CommentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommentsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EditProfileScreen]
class EditProfileRoute extends _i10.PageRouteInfo<void> {
  const EditProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FoodItemDetailScreen]
class FoodItemDetailRoute extends _i10.PageRouteInfo<FoodItemDetailRouteArgs> {
  FoodItemDetailRoute({
    _i11.Key? key,
    required int index,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          FoodItemDetailRoute.name,
          args: FoodItemDetailRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'FoodItemDetailRoute';

  static const _i10.PageInfo<FoodItemDetailRouteArgs> page =
      _i10.PageInfo<FoodItemDetailRouteArgs>(name);
}

class FoodItemDetailRouteArgs {
  const FoodItemDetailRouteArgs({
    this.key,
    required this.index,
  });

  final _i11.Key? key;

  final int index;

  @override
  String toString() {
    return 'FoodItemDetailRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i4.FoodsListScreen]
class FoodsListRoute extends _i10.PageRouteInfo<void> {
  const FoodsListRoute({List<_i10.PageRouteInfo>? children})
      : super(
          FoodsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FoodsListRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfileDisplayInfoScreen]
class ProfileDisplayInfoRoute extends _i10.PageRouteInfo<void> {
  const ProfileDisplayInfoRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileDisplayInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileDisplayInfoRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsScreen]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashScreen]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.WishlistScreen]
class WishlistRoute extends _i10.PageRouteInfo<void> {
  const WishlistRoute({List<_i10.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
