import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';

abstract class WishListLocalDataSource {
  void add(FoodItemModel food);

  void remove(FoodItemModel food);

  List<FoodItemModel> getAll();
}

class WishListLocalDataSourceImpl extends WishListLocalDataSource {
  final List<FoodItemModel> _foods = <FoodItemModel>[];

  @override
  void add(FoodItemModel food) {
    _foods.add(food);
  }

  @override
  void remove(FoodItemModel food) {
    _foods.remove(food);
  }

  @override
  List<FoodItemModel> getAll() {
    return _foods;
  }
}
