import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;
  late double _screenWidth;
  late double _screenHeight;

  Responsive(this.context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  double heightPercentage(double percentage) {
    return _screenHeight * percentage / 100;
  }

  double widthPercentage(double percentage) {
    return _screenWidth * percentage / 100;
  }

  double fontSize(double percentage) {
    return _screenWidth * percentage / 100;
  }

  int gridCount() {
    if (_screenWidth < 600) {
      return 2;
    } else if (_screenWidth < 900) {
      return 3;
    } else {
      return 4;
    }
  }
}
