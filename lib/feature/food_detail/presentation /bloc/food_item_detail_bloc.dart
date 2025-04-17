import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/feature/food_detail/domain/usecase/get_food_item_detail.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

part 'food_item_detail_event.dart';

part 'food_item_detail_state.dart';

class FoodItemDetailBloc
    extends Bloc<FoodItemDetailEvent, FoodItemDetailState> {
  GetFoodItemDetail getFoodItemDetail;

  FoodItemDetailBloc({required this.getFoodItemDetail})
      : super(FoodItemDetailInitial()) {
    on<FetchFoodItemDetails>(_fetchFoodItemDetails);
    on<SliderValueChanged>(_sliderValueChanged);
  }

  Future<void> _fetchFoodItemDetails(
      FetchFoodItemDetails event, Emitter<FoodItemDetailState> emit) async {
    emit(FoodItemDetailLoading());
    final result = await getFoodItemDetail.getFoodItem(1);
    result.fold((failure) {
      emit(FoodItemDetailLoadError(error: failure.message));
    }, (food) {
      emit(FoodItemDetailLoaded(food: food, sliderValue: 0.0));
    });
  }

  Future<void> _sliderValueChanged(
      SliderValueChanged event, Emitter<FoodItemDetailState> emit) async {
    if (state is FoodItemDetailLoaded) {
      final currentState = state as FoodItemDetailLoaded;
      emit(currentState.copyWith(sliderValue: event.value));
    }
  }
}
