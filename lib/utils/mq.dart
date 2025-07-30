import 'package:flutter/widgets.dart';

class MQ {
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static TextScaler textScale(BuildContext context) {
    return MediaQuery.of(context).textScaler;
  }

  static Orientation orientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  static bool isSmallPhone(BuildContext context) {
    return width(context) < 360;
  }

  static bool isMediumPhone(BuildContext context) {
    return width(context) >= 360 && width(context) < 480;
  }

  static bool isLargePhone(BuildContext context) {
    return width(context) >= 480;
  }
}
