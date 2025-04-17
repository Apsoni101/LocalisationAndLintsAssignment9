part of 'foods_list_bloc.dart';

@immutable
sealed class FoodsListEvent extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

class FetchFoodsListEvent extends FoodsListEvent {}

class SearchFoodsEvent extends FoodsListEvent {

   SearchFoodsEvent(this.query);
  final String query;

  @override
  List<Object> get props => <String>[query];
}
class FetchFoodCategoriesEvent extends FoodsListEvent {}

class FilterByCategoryEvent extends FoodsListEvent {

   FilterByCategoryEvent(this.category);
  final String category;

  @override
  List<Object> get props => <String>[category];
}