part of 'foods_list_bloc.dart';

@immutable
sealed class FoodsListState extends Equatable {
  @override
  List<Object> get props => [];
}

final class FoodsListInitial extends FoodsListState {}

final class FoodListLoading extends FoodsListState {}

final class FoodListLoaded extends FoodsListState {
  final List<FoodItemEntity> foods;

  FoodListLoaded({required this.foods});

  @override
  List<Object> get props => [foods];
}

class FoodListError extends FoodsListState {
  final String message;

  FoodListError({required this.message});
}
