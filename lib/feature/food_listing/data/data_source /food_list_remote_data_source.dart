import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:foodappassignment8/core/networking/network_constants.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/core/networking/network_service.dart';
import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';

abstract class FoodListRemoteDataSource {
  Future<Either<NetworkFailure, List<FoodItemModel>>> getAllFoods();
}

class FoodListRemoteDataSourceImpl implements FoodListRemoteDataSource {

  FoodListRemoteDataSourceImpl({required this.networkService});
  final NetworkService networkService;

  @override
  Future<Either<NetworkFailure, List<FoodItemModel>>> getAllFoods() async {
    final Either<NetworkFailure, Response<dynamic>> response = await networkService.getPath(NetworkConstants.products);
    return response.fold((NetworkFailure failure) => Left<NetworkFailure, List<FoodItemModel>>(failure), (Response<dynamic> response) {
      final List<dynamic> data = response.data[NetworkConstants.products];
      final List<FoodItemModel> list = data.map((dynamic json) => FoodItemModel.fromJson(json)).toList();
      return Right<NetworkFailure, List<FoodItemModel>>(list);
    });
  }
}
