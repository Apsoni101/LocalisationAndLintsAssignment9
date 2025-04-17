import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/domain/usecase/get_all_foods_list.dart';

part 'foods_list_event.dart';

part 'foods_list_state.dart';

class FoodsListBloc extends Bloc<FoodsListEvent, FoodsListState> {
  final GetAllFoodsList getAllFoodsList;

  List<FoodItemEntity> _allFoods = [];

  FoodsListBloc({required this.getAllFoodsList}) : super(FoodsListInitial()) {
    on<FetchFoodsListEvent>(_fetchFoodsListEvent);
    on<SearchFoodsEvent>(_searchFoodsEvent);
    on<FilterByCategoryEvent>(_filterByCategoryEvent);
  }

  Future<void> _fetchFoodsListEvent(
    FetchFoodsListEvent event,
    Emitter<FoodsListState> emit,
  ) async {
    emit(FoodListLoading());
    final result = await getAllFoodsList.getAllFoodsList();
    result.fold(
      (failure) => emit(FoodListError(message: failure.message)),
      (foods) {
        _allFoods = foods;
        emit(FoodListLoaded(foods: foods));
      },
    );
  }

  void _searchFoodsEvent(
    SearchFoodsEvent event,
    Emitter<FoodsListState> emit,
  ) {
    final query = event.query.toLowerCase();
    final filteredFoods = _allFoods
        .where((food) => food.title.toLowerCase().contains(query))
        .toList();
    emit(FoodListLoaded(foods: filteredFoods));
  }


  void _filterByCategoryEvent(
      FilterByCategoryEvent event,
      Emitter<FoodsListState> emit,
      ) {
    final filteredFoods = event.category == 'All'
        ? _allFoods
        : _allFoods.where((food) => food.category == event.category).toList();
    emit(FoodListLoaded(foods: filteredFoods));
  }


  List<String> get allCategories {
    final categories = _allFoods.map((food) => food.category).toSet().toList();
    categories.insert(0, 'All');
    return categories;
  }

}
