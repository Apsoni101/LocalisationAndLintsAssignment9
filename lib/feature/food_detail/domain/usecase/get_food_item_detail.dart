
import 'package:dartz/dartz.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/feature/food_detail/domain/repo/food_item_detail_repo.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

class GetFoodItemDetail {
  final FoodItemDetailRepo foodItemDetailRepo;
  GetFoodItemDetail({required this.foodItemDetailRepo});
  Future<Either<NetworkFailure, FoodItemEntity>> getFoodItem(int id) {
    return foodItemDetailRepo.getFoodItem(id);
  }

}