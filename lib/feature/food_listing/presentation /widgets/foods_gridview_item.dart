import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/constants/app_assets.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/core/navigation/app_router.gr.dart';
import 'package:foodappassignment8/feature/common/presentation/widgets/rating_row.dart';
import 'package:foodappassignment8/feature/food_listing/domain/entity/food_item_entity.dart';
import 'package:foodappassignment8/feature/wishlist/presentation/bloc/wishlist_bloc.dart';

class FoodsGridviewItem extends StatelessWidget {
  const FoodsGridviewItem({required this.food, super.key});

  final FoodItemEntity food;

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
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                  food.image,
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress,) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          color: AppColors.hot,
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      );
                    }
                  },
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace,) {
                    return const Center(
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
                children: <Widget>[
                  const RatingRow(),
                  BlocBuilder<WishlistBloc, WishlistState>(
                    builder: (BuildContext context, WishlistState state) {
                      final bool isWished = state is WishlistLoaded && state.items.any((FoodItemEntity item) => item.id == food.id);

                      return InkWell(
                        onTap: () {
                          if (isWished) {
                            context.read<WishlistBloc>().add(RemoveFromWishlist(food));
                          } else {
                            context.read<WishlistBloc>().add(AddToWishlist(food));
                          }
                        },
                        child: Image.asset(
                          isWished ? AppAssets.filledHeart : AppAssets.heart,
                          color: isWished ? AppColors.hot : AppColors.title,
                          width: 20,
                          height: 20,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
