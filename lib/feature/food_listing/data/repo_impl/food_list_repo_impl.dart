import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/feature/food_listing/data/data_source%20/food_list_remote_data_source.dart';
import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/domain/repo/food_list_repo.dart';

class FoodListRepoImpl implements FoodListRepo {

  FoodListRepoImpl({required this.foodListRemoteDataSource});
  final FoodListRemoteDataSource foodListRemoteDataSource;

  @override
  Future<Either<NetworkFailure, List<FoodItemEntity>>> getAllFoods() async {
    final Either<NetworkFailure, List<FoodItemModel>> result = await foodListRemoteDataSource.getAllFoods();

    return result.fold(
      (NetworkFailure failure) => Left<NetworkFailure, List<FoodItemModel>>(failure),
      (List<FoodItemModel> models) {
        final List<FoodItemEntity> entities = models.map((FoodItemModel m) => m.toEntity()).toList();
        return Right<NetworkFailure, List<FoodItemEntity>>(entities);
      },
    );
  }
}
