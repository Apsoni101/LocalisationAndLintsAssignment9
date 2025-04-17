part of 'food_item_detail_bloc.dart';

@immutable
sealed class FoodItemDetailEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class FetchFoodItemDetails extends FoodItemDetailEvent{}

class SliderValueChanged extends FoodItemDetailEvent {
  final double value;
  SliderValueChanged(this.value);
  @override
  List<Object> get props => [value];
}
