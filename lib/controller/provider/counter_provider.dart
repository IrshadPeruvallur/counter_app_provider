import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void incriment() {
    _counter++;
    notifyListeners();
  }
}
