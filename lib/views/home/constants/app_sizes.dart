import 'package:flutter/widgets.dart';

class AppSizes {
  static late double screenWidth;
  static late double screenHeight;
  static late bool isTablet;

  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    isTablet = screenWidth >= 600;
  }

  static double scale(double size) {
    return isTablet ? size * 1.3 : size;
  }
}
