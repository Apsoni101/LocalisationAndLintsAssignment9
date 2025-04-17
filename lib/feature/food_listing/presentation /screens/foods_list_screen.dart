import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/di/service_locator.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/bloc/foods_list_bloc.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/food_list_body.dart';
import 'package:foodappassignment8/feature/food_listing/presentation%20/widgets/foods_list_appbar.dart';

@RoutePage()
class FoodsListScreen extends StatelessWidget {
  const FoodsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AppInjector.injector<FoodsListBloc>()..add(FetchFoodsListEvent()),
      child: Scaffold(
        appBar: FoodsListAppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: BlocBuilder<FoodsListBloc, FoodsListState>(
          builder: (context, state) {
            switch (state) {
              case FoodListLoading():
                return const Center(child: CircularProgressIndicator());
              case FoodListLoaded():
                final foods = state.foods;
                return FoodListBody(
                  foods: foods,
                );
              case FoodListError(:final message):
                return Center(child: Text(message));
              case FoodsListInitial():
                return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
