import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodappassignment8/core/constants/app_colors.dart';
import 'package:foodappassignment8/core/constants/app_strings.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/bloc/food_item_detail_bloc.dart';

class SpiceSelector extends StatelessWidget {
  const SpiceSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(AppsStrings.spicy, style: AppTextStyles.spicy),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<FoodItemDetailBloc, FoodItemDetailState>(
          builder: (context, state) {
            if (state is FoodItemDetailLoaded) {
              return SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: AppColors.buttonBg,
                    inactiveTrackColor: AppColors.sliderTrack,
                    trackHeight: 3.0,
                    thumbColor: AppColors.buttonBg,
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 7.0),
                  ),
                  child: Slider(
                    padding: EdgeInsets.zero,
                    value: state.sliderValue,
                    onChanged: (value) {
                      context
                          .read<FoodItemDetailBloc>()
                          .add(SliderValueChanged(value));
                    },
                    min: 0,
                    max: 5,
                  ));
            }
            return const SizedBox.shrink();
          },
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppsStrings.mild,
              style: AppTextStyles.mild,
            ),
            Text(
              AppsStrings.hot,
              style: AppTextStyles.hot,
            ),
          ],
        )
      ],
    );
  }
}
