part of 'foods_list_bloc.dart';

@immutable
sealed class FoodsListState extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

final class FoodsListInitial extends FoodsListState {}

final class FoodListLoading extends FoodsListState {}

final class FoodListLoaded extends FoodsListState {

  FoodListLoaded({required this.foods});
  final List<FoodItemEntity> foods;

  @override
  List<Object> get props => <List<FoodItemEntity>>[foods];
}

class FoodListError extends FoodsListState {

  FoodListError({required this.message});
  final String message;

  @override
  List<Object> get props => <String>[message];
}
