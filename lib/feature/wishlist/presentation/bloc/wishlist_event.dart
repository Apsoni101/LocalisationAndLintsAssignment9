part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object?> get props => <Object>[];
}

class LoadWishlist extends WishlistEvent {}

class AddToWishlist extends WishlistEvent {

  const AddToWishlist(this.item);
  final FoodItemEntity item;

  @override
  List<Object?> get props => <FoodItemEntity>[item];
}

class RemoveFromWishlist extends WishlistEvent {

  const RemoveFromWishlist(this.item);
  final FoodItemEntity item;

  @override
  List<Object?> get props => <FoodItemEntity>[item];
}