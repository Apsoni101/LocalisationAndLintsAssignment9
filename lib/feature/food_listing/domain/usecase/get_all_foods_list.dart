
import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/domain/repo/food_list_repo.dart';

class GetAllFoodsList {
  final FoodListRepo foodListRepo;
  GetAllFoodsList({required this.foodListRepo});
  Future<Either<NetworkFailure, List<FoodItemEntity>>> getAllFoodsList() {
    return foodListRepo.getAllFoods();
  }

}