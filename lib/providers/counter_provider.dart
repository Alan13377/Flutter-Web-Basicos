import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider((ref) => CounterProvider());

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  get counter {
    return this._counter;
  }

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }
}
