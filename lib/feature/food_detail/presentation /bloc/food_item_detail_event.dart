part of 'food_item_detail_bloc.dart';

@immutable
sealed class FoodItemDetailEvent extends Equatable{
  @override
  List<Object> get props => <Object>[];
}

class FetchFoodItemDetails extends FoodItemDetailEvent{
 FetchFoodItemDetails(this.id);
 final  int id;

 @override
 List<Object> get props => <int>[id];
}

class SliderValueChanged extends FoodItemDetailEvent {
  SliderValueChanged(this.value);
  final double value;
  @override
  List<Object> get props => <double>[value];
}
