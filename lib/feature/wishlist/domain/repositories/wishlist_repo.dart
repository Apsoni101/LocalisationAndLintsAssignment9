
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

abstract class WishListRepo{
  void add(FoodItemEntity food);

  void remove(FoodItemEntity food);

  List<FoodItemEntity> getAll();
}