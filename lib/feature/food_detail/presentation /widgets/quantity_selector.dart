import 'package:flutter/material.dart';
import 'package:foodappassignment8/app_localisation/app_localizations.dart';
import 'package:foodappassignment8/core/constants/app_text_styles.dart';
import 'package:foodappassignment8/feature/food_detail/presentation%20/widgets/increment_decrement_button.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context).portion,
          style: AppTextStyles.spicy,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 8,
          children: [
            IncrementDecrementButton(icon: Icons.remove, onPress: (){}),
            Text(
              "1",
              style: AppTextStyles.quantity,
            ),
            IncrementDecrementButton(icon: Icons.add, onPress: (){}),

          ],
        )
      ],
    );
  }
}
