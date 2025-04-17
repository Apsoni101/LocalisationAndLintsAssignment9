import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/feature/food_detail/data/data_source%20/food_item_detail_remote_data_source.dart';
import 'package:foodappassignment8/feature/food_detail/domain/repo/food_item_detail_repo.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

class FoodItemDetailRepoImpl implements FoodItemDetailRepo {
  final FoodItemDetailRemoteDataSource foodItemDetailRemoteDataSource;

  FoodItemDetailRepoImpl({required this.foodItemDetailRemoteDataSource});

  @override
  Future<Either<NetworkFailure, FoodItemEntity>> getFoodItem(int id) async {
    final result = await foodItemDetailRemoteDataSource.getFoodItem(id);//not to be used

    return result.fold(
      (failure) => Left(failure),
      (models) {
        return Right(models);
      },
    );
  }
}
