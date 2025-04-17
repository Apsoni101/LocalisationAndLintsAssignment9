import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/feature/food_detail/data/data_source%20/food_item_detail_remote_data_source.dart';
import 'package:foodappassignment8/feature/food_detail/domain/repo/food_item_detail_repo.dart';
import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

class FoodItemDetailRepoImpl implements FoodItemDetailRepo {
  FoodItemDetailRepoImpl({required this.foodItemDetailRemoteDataSource});

  final FoodItemDetailRemoteDataSource foodItemDetailRemoteDataSource;

  @override
  Future<Either<NetworkFailure, FoodItemEntity>> getFoodItem(int id) async {
    final Either<NetworkFailure, FoodItemModel> result =
        await foodItemDetailRemoteDataSource.getFoodItem(id);

    return result.fold(
      (NetworkFailure failure) => Left<NetworkFailure, FoodItemEntity>(failure),
      (FoodItemModel models) {
        return Right<NetworkFailure, FoodItemEntity>(models);
      },
    );
  }
}
