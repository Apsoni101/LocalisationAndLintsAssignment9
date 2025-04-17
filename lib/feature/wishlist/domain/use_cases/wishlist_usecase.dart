import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/wishlist/domain/repositories/wishlist_repo.dart';

class WishlistUseCase {

  WishlistUseCase({required this.wishlistRepo});
  final WishListRepo wishlistRepo;

  void addToWishlist(FoodItemEntity food) {
    wishlistRepo.add(food);
  }

  void removeFromWishlist(FoodItemEntity food) {
    wishlistRepo.remove(food);
  }

  List<FoodItemEntity> getWishlistItems() {
    return wishlistRepo.getAll();
  }
}
