part of 'food_item_detail_bloc.dart';

@immutable
sealed class FoodItemDetailState extends Equatable {
  @override
  List<Object> get props => [];
}

final class FoodItemDetailInitial extends FoodItemDetailState {}
final class FoodItemDetailLoading extends FoodItemDetailState {}
class FoodItemDetailLoaded extends FoodItemDetailState {
  final FoodItemEntity food;
  final double sliderValue;

   FoodItemDetailLoaded({required this.food, required this.sliderValue});

  @override
  List<Object> get props => [food, sliderValue];

  FoodItemDetailLoaded copyWith({
    FoodItemEntity? food,
    double? sliderValue,
  }) {
    return FoodItemDetailLoaded(
      food: food ?? this.food,
      sliderValue: sliderValue ?? this.sliderValue,
    );
  }
}

final class FoodItemDetailLoadError extends FoodItemDetailState {
  final String error;
  FoodItemDetailLoadError({required this.error});
  @override
  List<Object> get props => [error];
}

