import 'package:flutter/material.dart';

class DetaiScreenProvider with ChangeNotifier {
  int _currentImage = 0;
  int get currentImage => _currentImage;

  void setCurrentImage(int index) {
    _currentImage = index;
    notifyListeners();
  }
}
