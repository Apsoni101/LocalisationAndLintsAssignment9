import 'package:foodappassignment8/core/networking/network_service.dart';
import 'package:foodappassignment8/feature/food_detail/data/data_source%20/food_item_detail_remote_data_source.dart';
import 'package:foodappassignment8/feature/food_detail/data/repo_impl/food_item_detail_repo_impl.dart';
import 'package:foodappassignment8/feature/food_detail/domain/repo/food_item_detail_repo.dart';
import 'package:foodappassignment8/feature/food_detail/domain/usecase/get_food_item_detail.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/bloc/food_item_detail_bloc.dart';
import 'package:foodappassignment8/feature/food_listing/data/data_source%20/food_list_remote_data_source.dart';
import 'package:foodappassignment8/feature/food_listing/data/repo_impl/food_list_repo_impl.dart';
import 'package:foodappassignment8/feature/food_listing/domain/repo/food_list_repo.dart';
import 'package:foodappassignment8/feature/food_listing/domain/usecase/get_all_foods_list.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/bloc/foods_list_bloc.dart';
import 'package:foodappassignment8/feature/settings/data/data_sources/settings_local_datasource.dart';
import 'package:foodappassignment8/feature/settings/data/repositories/settings_repo_impl.dart';
import 'package:foodappassignment8/feature/settings/domain/repositories/settings_repo.dart';
import 'package:foodappassignment8/feature/settings/domain/use_cases/settings_usecase.dart';
import 'package:foodappassignment8/feature/settings/presentation/bloc/settings_bloc.dart';
import 'package:foodappassignment8/feature/user_profile/data/data_source/user_profile_local_data_source.dart';
import 'package:foodappassignment8/feature/user_profile/data/repo_impl/user_profile_repo_impl.dart';
import 'package:foodappassignment8/feature/user_profile/domain/repo/user_profile_repo.dart';
import 'package:foodappassignment8/feature/user_profile/domain/usecase/user_profile_usecase.dart';
import 'package:foodappassignment8/feature/user_profile/presentation/bloc/user_profile_bloc.dart';
import 'package:get_it/get_it.dart';

class AppInjector {
  static final injector = GetIt.instance;

  static Future<void> setupInjector() async {
    injector
      ..registerLazySingleton<NetworkService>(() => NetworkService())

      //datasource
      ..registerLazySingleton<FoodListRemoteDataSource>(() =>
          FoodListRemoteDataSourceImpl(
              networkService: injector<NetworkService>()))
      ..registerLazySingleton<FoodItemDetailRemoteDataSource>(() =>
          FoodItemDetailRemoteDataSourceImpl(
              networkService: injector<NetworkService>()))
      ..registerLazySingleton<UserProfileLocalDataSource>(
          () => UserProfileLocalDataSourceImpl())
      ..registerLazySingleton<SettingsLocalDataSource>(
          () => SettingsLocalDataSourceImpl())

      //repo
      ..registerLazySingleton<FoodListRepo>(() => FoodListRepoImpl(
          foodListRemoteDataSource: injector<FoodListRemoteDataSource>()))
      ..registerLazySingleton<FoodItemDetailRepo>(() => FoodItemDetailRepoImpl(
          foodItemDetailRemoteDataSource:
              injector<FoodItemDetailRemoteDataSource>()))
      ..registerLazySingleton<UserProfileRepo>(() => UserProfileRepoImpl(
            localDataSource: injector<UserProfileLocalDataSource>(),
          ))
      ..registerLazySingleton<SettingsRepo>(() => SettingsRepoImpl(
          settingsLocalDataSource: injector<SettingsLocalDataSource>()))

      //useCase
      ..registerLazySingleton<GetAllFoodsList>(
          () => GetAllFoodsList(foodListRepo: injector<FoodListRepo>()))
      ..registerLazySingleton<GetFoodItemDetail>(() =>
          GetFoodItemDetail(foodItemDetailRepo: injector<FoodItemDetailRepo>()))
      ..registerLazySingleton<UserProfileUseCase>(
          () => UserProfileUseCase(repo: injector<UserProfileRepo>()))
      ..registerLazySingleton<SettingsUseCase>(
          () => SettingsUseCase(repository: injector<SettingsRepo>()))

      //bloc
      ..registerFactory<FoodsListBloc>(
          () => FoodsListBloc(getAllFoodsList: injector<GetAllFoodsList>()))
      ..registerFactory<FoodItemDetailBloc>(() =>
          FoodItemDetailBloc(getFoodItemDetail: injector<GetFoodItemDetail>()))
      ..registerFactory<UserProfileBloc>(() =>
          UserProfileBloc(userProfileUseCase: injector<UserProfileUseCase>()))
      ..registerFactory<SettingsBloc>(() =>
          SettingsBloc(settingsUseCase: injector<SettingsUseCase>()));
  }
}
