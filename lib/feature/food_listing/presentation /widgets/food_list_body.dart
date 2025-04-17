import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/bloc/foods_list_bloc.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/custom_search_field.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/filter_button.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/foods_grid_view_body.dart';

class FoodListBody extends StatefulWidget {

  const FoodListBody({required this.foods, super.key});
  final List<FoodItemEntity> foods;

  @override
  State<FoodListBody> createState() => _FoodListBodyState();
}

class _FoodListBodyState extends State<FoodListBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    final List<String> categories = context.read<FoodsListBloc>().allCategories;
    _tabController = TabController(length: categories.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> categories = context.read<FoodsListBloc>().allCategories;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        spacing: 22,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            spacing: 16,
            children: <Widget>[
              CustomSearchField(
                onChanged: (String value) {
                  context.read<FoodsListBloc>().add(SearchFoodsEvent(value));
                },
              ),
              FilterButton(onTap: () {}),
            ],
          ),
          Expanded(
            child: Column(
              spacing: 20,
              children: <Widget>[
                TabBar(
                    labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                    isScrollable: true,
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    dividerHeight: 0,
                    tabs: categories.map((String category) {
                      final int index = categories.indexOf(category);
                      return TextButton(
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              backgroundColor: _tabController.index == index
                                  ? AppColors.hot
                                  : AppColors.description
                                      .withValues(alpha: 0.1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),),),
                          onPressed: () {
                            setState(() {
                              _tabController.index = index;
                            });
                            context
                                .read<FoodsListBloc>()
                                .add(FilterByCategoryEvent(category));
                          },
                          child: Text(
                            category,
                            style: _tabController.index == index
                                ? AppTextStyles.selectedTab
                                : AppTextStyles.unSelectedTab,
                          ),);
                    }).toList(),),
                Expanded(
                    child: TabBarView(

                  controller: _tabController,
                  children: categories
                      .map((_) => FoodsGridViewBody(foods: widget.foods))
                      .toList(),
                ),),
              ],
            ),
          )
        ,],
      ),
    );
  }
}
