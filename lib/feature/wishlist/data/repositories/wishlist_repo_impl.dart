import 'package:foodappassignment8/feature/food_listing/data/models/food_item_model.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/wishlist/data/data_sources/wishlist_local_datasource.dart';
import 'package:foodappassignment8/feature/wishlist/domain/repositories/wishlist_repo.dart';

class WishlistRepoImpl implements WishListRepo {
  WishlistRepoImpl({required this.wishListLocalDataSource});

  WishListLocalDataSource wishListLocalDataSource;

  @override
  void add(FoodItemEntity food) {
    wishListLocalDataSource.add(FoodItemModel.fromEntity(food));
  }

  @override
  List<FoodItemEntity> getAll() {
   return wishListLocalDataSource.getAll();

  }

  @override
  void remove(FoodItemEntity food) {
    wishListLocalDataSource.remove(FoodItemModel.fromEntity(food));

  }
}
