import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/di/service_locator.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/bloc/food_item_detail_bloc.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/widgets/food_item_detail_body.dart';

@RoutePage()
class FoodItemDetailScreen extends StatelessWidget {
  final int index;

  const FoodItemDetailScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AppInjector.injector<FoodItemDetailBloc>()..add(FetchFoodItemDetails()),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: ()=>context.router.pop(),
            child: Image.asset(AppAssets.arrowLeft),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: InkWell(
                child: Image.asset(AppAssets.search),
              ),
            )
          ],
        ),
        body: BlocBuilder<FoodItemDetailBloc, FoodItemDetailState>(
          builder: (context, state) {
            switch (state) {
              case FoodItemDetailLoading():
                return const Center(child: CircularProgressIndicator());
              case FoodItemDetailLoaded():
                final food = state.food;
                return FoodItemDetailBody(food: food);
              case FoodItemDetailLoadError(:final error):
                return Center(child: Text(error));
              case FoodItemDetailInitial():
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
