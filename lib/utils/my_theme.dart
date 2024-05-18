import 'dart:math';

import 'package:expenses_tracker/utils/constants.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade100,
      onBackground: Colors.black,
      primary: AppConstant.blue,
      secondary: AppConstant.purple,
      tertiary: AppConstant.orange,
      outline: Colors.grey,
    ),
  );

  static const Gradient myGradient = LinearGradient(
    colors: [
      AppConstant.blue,
      AppConstant.purple,
      AppConstant.orange,
    ],
    transform: GradientRotation(pi / 4),
  );
}
