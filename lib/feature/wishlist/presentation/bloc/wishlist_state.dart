part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object?> get props => <Object>[];
}


final class WishlistInitial extends WishlistState {}
class WishlistLoading extends WishlistState {}

class WishlistLoaded extends WishlistState {

  const WishlistLoaded(this.items);
  final List<FoodItemEntity> items;

  @override
  List<Object?> get props => <List<FoodItemEntity>>[items];
}

class WishlistError extends WishlistState {

  const WishlistError(this.message);
  final String message;

  @override
  List<Object?> get props => <String>[message];
}