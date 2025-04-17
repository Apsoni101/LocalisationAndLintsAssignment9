import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final String icon;
  final BorderSide? side;
  final Color? backgroundColor;
  final Color? iconColor;
  final TextStyle? style;
  const CustomTextButton({super.key, required this.title, required this.icon, this.side, this.backgroundColor, this.style, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      label: Text(title,
          style: style),

      iconAlignment: IconAlignment.end,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            horizontal: 28, vertical: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        side: side,
        backgroundColor: backgroundColor,
      ),
      icon: Image.asset(icon,
          width: 24,
          height: 24,
          color: iconColor),
    );
  }
}
