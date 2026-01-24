import 'package:flutter/material.dart';

class IconSize {
  static double smallIconSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.06;
  }

  static double mediumIconSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.07;
  }

  static double largeIconSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.08;
  }

  static double BottomIcon(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.08;
  }
}

class Sizes {
  static double heights(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double widths(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
