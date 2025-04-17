import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_constants.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/core/networking/network_service.dart';
import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';

abstract class FoodItemDetailRemoteDataSource {
  Future<Either<NetworkFailure, FoodItemModel>> getFoodItem(int id);
}

class FoodItemDetailRemoteDataSourceImpl implements FoodItemDetailRemoteDataSource {
  final NetworkService networkService;

  FoodItemDetailRemoteDataSourceImpl({required this.networkService});

  @override
  Future<Either<NetworkFailure, FoodItemModel>> getFoodItem(int id) async {
    final response = await networkService.getPath("${NetworkConstants.products}/$id");
    return response.fold((failure) => Left(failure), (response) {
      final  data = response.data[NetworkConstants.product];
      final foodItem = FoodItemModel.fromJson(data);
      return Right(foodItem);
    });
  }
}
