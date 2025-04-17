import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/core/navigation/app_router.gr.dart';
import 'package:foodappassignment8/feature/common/presentation/widgets/rating_row.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';

class FoodsGridviewItem extends StatelessWidget {
  final FoodItemEntity food;

  const FoodsGridviewItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushRoute(FoodItemDetailRoute(index: food.id));
      },
      child: Card(
        color: AppColors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                  food.image,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      );
                    }
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 50,
                      ),
                    );
                  },
                ),
              ),
              Text(
                food.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.gridItemTitle,
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                food.model,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.gridItemSubTitle,
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingRow(),
                  Image.asset(
                    AppAssets.heart,
                    color: AppColors.title,
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
