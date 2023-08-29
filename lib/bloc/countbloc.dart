import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void giam() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0; // Đặt lại giá trị về 0
    notifyListeners();
  }
}
