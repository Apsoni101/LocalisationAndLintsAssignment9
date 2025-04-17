part of 'food_item_detail_bloc.dart';

@immutable
sealed class FoodItemDetailState extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

final class FoodItemDetailInitial extends FoodItemDetailState {}
final class FoodItemDetailLoading extends FoodItemDetailState {}
class FoodItemDetailLoaded extends FoodItemDetailState {

   FoodItemDetailLoaded({required this.food, required this.sliderValue});
  final FoodItemEntity food;
  final double sliderValue;

  @override
  List<Object> get props => <Object>[food, sliderValue];

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
  FoodItemDetailLoadError({required this.error});
  final String error;
  @override
  List<Object> get props => <String>[error];
}

