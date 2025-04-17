import 'package:flutter/material.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/foods_gridview_item.dart';


class FoodsGridViewBody extends StatelessWidget {
  final List<FoodItemEntity> foods;
  const FoodsGridViewBody({super.key, required this.foods});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(bottom: 40.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 14.0,
            childAspectRatio: 0.77),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return FoodsGridviewItem(food:food);
        },
      ),
    );
  }
}
