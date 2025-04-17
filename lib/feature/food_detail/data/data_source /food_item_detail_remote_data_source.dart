import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodappassignment8/core/networking/network_constants.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/core/networking/network_service.dart';
import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';

abstract class FoodItemDetailRemoteDataSource {
  Future<Either<NetworkFailure, FoodItemModel>> getFoodItem(int id);
}

class FoodItemDetailRemoteDataSourceImpl
    implements FoodItemDetailRemoteDataSource {
  FoodItemDetailRemoteDataSourceImpl({required this.networkService});

  final NetworkService networkService;

  @override
  Future<Either<NetworkFailure, FoodItemModel>> getFoodItem(int id) async {
    final Either<NetworkFailure, Response<dynamic>> response =
        await networkService.getPath("${NetworkConstants.products}/$id");
    return response.fold(
        (NetworkFailure failure) =>
            Left<NetworkFailure, FoodItemModel>(failure),
        (Response<dynamic> response) {
      final dynamic data = response.data[NetworkConstants.product];
      final FoodItemModel foodItem = FoodItemModel.fromJson(data);
      return Right<NetworkFailure, FoodItemModel>(foodItem);
    });
  }
}
