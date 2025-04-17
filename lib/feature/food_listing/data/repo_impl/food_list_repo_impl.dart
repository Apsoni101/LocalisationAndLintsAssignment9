import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/feature/food_listing/data/data_source%20/food_list_remote_data_source.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/domain/repo/food_list_repo.dart';

class FoodListRepoImpl implements FoodListRepo {
  final FoodListRemoteDataSource foodListRemoteDataSource;

  FoodListRepoImpl({required this.foodListRemoteDataSource});

  @override
  Future<Either<NetworkFailure, List<FoodItemEntity>>> getAllFoods() async {
    final result = await foodListRemoteDataSource.getAllFoods();

    return result.fold(
      (failure) => Left(failure),
      (models) {
        final entities = models.map((m) => m.toEntity()).toList();
        return Right(entities);
      },
    );
  }
}
