part of 'foods_list_bloc.dart';

@immutable
sealed class FoodsListEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchFoodsListEvent extends FoodsListEvent {}

class SearchFoodsEvent extends FoodsListEvent {
  final String query;

   SearchFoodsEvent(this.query);

  @override
  List<Object> get props => [query];
}
class FetchFoodCategoriesEvent extends FoodsListEvent {}

class FilterByCategoryEvent extends FoodsListEvent {
  final String category;

   FilterByCategoryEvent(this.category);

  @override
  List<Object> get props => [category];
}