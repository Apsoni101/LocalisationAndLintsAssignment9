import 'package:flutter/material.dart';

class ScreenSizeUtils {
  final BuildContext context;
  final double height;
  final double width;

  ScreenSizeUtils(this.context)
      : height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;

  double h(double value) => height * value;
  double w(double value) => width * value;
}

