import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/networking/network_failure.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/domain/usecase/get_all_foods_list.dart';

part 'foods_list_event.dart';

part 'foods_list_state.dart';

class FoodsListBloc extends Bloc<FoodsListEvent, FoodsListState> {
  FoodsListBloc({required this.getAllFoodsList}) : super(FoodsListInitial()) {
    on<FetchFoodsListEvent>(_fetchFoodsListEvent);
    on<SearchFoodsEvent>(_searchFoodsEvent);
    on<FilterByCategoryEvent>(_filterByCategoryEvent);
  }

  final GetAllFoodsList getAllFoodsList;

  List<FoodItemEntity> _allFoods = <FoodItemEntity>[];

  Future<void> _fetchFoodsListEvent(
    FetchFoodsListEvent event,
    Emitter<FoodsListState> emit,
  ) async {
    emit(FoodListLoading());
    final Either<NetworkFailure, List<FoodItemEntity>> result =
        await getAllFoodsList.getAllFoodsList();
    result.fold(
      (NetworkFailure failure) => emit(FoodListError(message: failure.message)),
      (List<FoodItemEntity> foods) {
        _allFoods = foods;
        emit(FoodListLoaded(foods: foods));
      },
    );
  }

  void _searchFoodsEvent(
    SearchFoodsEvent event,
    Emitter<FoodsListState> emit,
  ) {
    final String query = event.query.toLowerCase();
    final List<FoodItemEntity> filteredFoods = _allFoods
        .where(
            (FoodItemEntity food) => food.title.toLowerCase().contains(query),)
        .toList();
    emit(FoodListLoaded(foods: filteredFoods));
  }

  void _filterByCategoryEvent(
    FilterByCategoryEvent event,
    Emitter<FoodsListState> emit,
  ) {
    final List<FoodItemEntity> filteredFoods = event.category == 'All'
        ? _allFoods
        : _allFoods
            .where((FoodItemEntity food) => food.category == event.category)
            .toList();
    emit(FoodListLoaded(foods: filteredFoods));
  }

  List<String> get allCategories {
    final List<String> categories = _allFoods
        .map((FoodItemEntity food) => food.category)
        .toSet()
        .toList()
      ..insert(0, 'All');
    return categories;
  }
}
