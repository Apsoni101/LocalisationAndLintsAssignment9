import 'package:flutter/material.dart';
import 'package:foodappassignment8/app_localisation/app_localizations.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/feature/common/presentation/widgets/rating_row.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/widgets/quantity_selector.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/widgets/spice_selector.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/widgets/success_dialog.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

class FoodItemDetailBody extends StatelessWidget {

  const FoodItemDetailBody({required this.food, super.key});
  final FoodItemEntity food;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            food.image,
            errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 50,
                  ),
                  Text(AppLocalizations.of(context).loadError)
                ,],
              );
            },
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          food.title,
          style: AppTextStyles.foodItemDetailTitle,
          maxLines: 1,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: <Widget>[
            const RatingRow(
              color: AppColors.deliveryTime,
            ),
            Text(
              AppLocalizations.of(context).deliveryTime,
              style: AppTextStyles.deliveryTime,
            )
          ,],
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
          food.description,
          style: AppTextStyles.description,
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: SpiceSelector(),
            ),
            Expanded(child: SizedBox.shrink()),
            Expanded(flex: 2, child: QuantitySelector())
          ,],
        ),
        const SizedBox(
          height: 72,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: null,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),),
                  backgroundColor: AppColors.buttonBg,),
              child: Text(
                "\$${food.price}",
                style: AppTextStyles.price,
              ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => const SuccessDialog(),
                );
              },
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 54),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),),
                  backgroundColor: AppColors.searchHint,),
              child: Text(
                AppLocalizations.of(context).orderNowTxt,
                style: AppTextStyles.orderNow,
              ),
            ),
          ],
        )
      ,],
    );
  }
}
