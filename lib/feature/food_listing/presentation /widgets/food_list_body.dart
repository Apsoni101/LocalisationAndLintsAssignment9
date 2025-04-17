import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/feature/common/presentation/widgets/category_row.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/bloc/foods_list_bloc.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/custom_search_field.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/filter_button.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/foods_grid_view_body.dart';

class FoodListBody extends StatelessWidget {
  final List<FoodItemEntity> foods;

  const FoodListBody({super.key, required this.foods});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        spacing: 22,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: CustomSearchField(
                  onChanged: (value) {
                    context.read<FoodsListBloc>().add(SearchFoodsEvent(value));
                  },
                ),
              ),
              FilterButton(onTap: () {}),
            ],
          ),
          CategoryRow(),
          Expanded( child: FoodsGridViewBody(foods: foods)),
        ],
      ),
    );
  }
}
