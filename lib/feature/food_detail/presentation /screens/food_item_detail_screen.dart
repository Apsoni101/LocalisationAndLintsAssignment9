import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/di/service_locator.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/bloc/food_item_detail_bloc.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/widgets/food_item_detail_body.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

@RoutePage()
class FoodItemDetailScreen extends StatelessWidget {

  const FoodItemDetailScreen({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodItemDetailBloc>(
      create: (BuildContext context) =>
          AppInjector.injector<FoodItemDetailBloc>()..add(FetchFoodItemDetails(index)),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: ()=>context.router.maybePop(),
            child: Image.asset(AppAssets.arrowLeft),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: InkWell(
                child: Image.asset(AppAssets.search),
              ),
            )
          ,],
        ),
        body: BlocBuilder<FoodItemDetailBloc, FoodItemDetailState>(
          builder: (BuildContext context, FoodItemDetailState state) {
            switch (state) {
              case FoodItemDetailLoading():
                return const Center(child: CircularProgressIndicator());
              case FoodItemDetailLoaded():
                final FoodItemEntity food = state.food;
                return FoodItemDetailBody(food: food);
              case FoodItemDetailLoadError(:final String error):
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
