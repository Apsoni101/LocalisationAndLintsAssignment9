// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:foodappassignment8/feature/comments/presentation/screens/comments_screen.dart'
    as _i1;
import 'package:foodappassignment8/feature/common/presentation/screen/home_screen.dart'
    as _i4;
import 'package:foodappassignment8/feature/food_detail/presentation%20/screens/food_item_detail_screen.dart'
    as _i2;
import 'package:foodappassignment8/feature/food_listing/presentation%20/screens/foods_list_screen.dart'
    as _i3;
import 'package:foodappassignment8/feature/splash/presentation/screens/splash_screen.dart'
    as _i5;
import 'package:foodappassignment8/feature/user_profile/presentation/screens/user_profile_screen.dart'
    as _i6;
import 'package:foodappassignment8/feature/wishlist/presentation/screens/wishlist_screen.dart'
    as _i7;

/// generated route for
/// [_i1.CommentsScreen]
class CommentsRoute extends _i8.PageRouteInfo<void> {
  const CommentsRoute({List<_i8.PageRouteInfo>? children})
    : super(CommentsRoute.name, initialChildren: children);

  static const String name = 'CommentsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.CommentsScreen();
    },
  );
}

/// generated route for
/// [_i2.FoodItemDetailScreen]
class FoodItemDetailRoute extends _i8.PageRouteInfo<FoodItemDetailRouteArgs> {
  FoodItemDetailRoute({
    _i9.Key? key,
    required int index,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         FoodItemDetailRoute.name,
         args: FoodItemDetailRouteArgs(key: key, index: index),
         initialChildren: children,
       );

  static const String name = 'FoodItemDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FoodItemDetailRouteArgs>();
      return _i2.FoodItemDetailScreen(key: args.key, index: args.index);
    },
  );
}

class FoodItemDetailRouteArgs {
  const FoodItemDetailRouteArgs({this.key, required this.index});

  final _i9.Key? key;

  final int index;

  @override
  String toString() {
    return 'FoodItemDetailRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i3.FoodsListScreen]
class FoodsListRoute extends _i8.PageRouteInfo<void> {
  const FoodsListRoute({List<_i8.PageRouteInfo>? children})
    : super(FoodsListRoute.name, initialChildren: children);

  static const String name = 'FoodsListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.FoodsListScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashScreen();
    },
  );
}

/// generated route for
/// [_i6.UserProfileScreen]
class UserProfileRoute extends _i8.PageRouteInfo<void> {
  const UserProfileRoute({List<_i8.PageRouteInfo>? children})
    : super(UserProfileRoute.name, initialChildren: children);

  static const String name = 'UserProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.UserProfileScreen();
    },
  );
}

/// generated route for
/// [_i7.WishlistScreen]
class WishlistRoute extends _i8.PageRouteInfo<void> {
  const WishlistRoute({List<_i8.PageRouteInfo>? children})
    : super(WishlistRoute.name, initialChildren: children);

  static const String name = 'WishlistRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.WishlistScreen();
    },
  );
}
