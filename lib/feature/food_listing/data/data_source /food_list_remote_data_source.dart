import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_constants.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/core/networking/network_service.dart';
import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';

abstract class FoodListRemoteDataSource {
  Future<Either<NetworkFailure, List<FoodItemModel>>> getAllFoods();
}

class FoodListRemoteDataSourceImpl implements FoodListRemoteDataSource {
  final NetworkService networkService;

  FoodListRemoteDataSourceImpl({required this.networkService});

  @override
  Future<Either<NetworkFailure, List<FoodItemModel>>> getAllFoods() async {
    final response = await networkService.getPath(NetworkConstants.products);
    return response.fold((failure) => Left(failure), (response) {
      final List<dynamic> data = response.data[NetworkConstants.products];
      final list = data.map((json) => FoodItemModel.fromJson(json)).toList();
      return Right(list);
    });
  }
}
