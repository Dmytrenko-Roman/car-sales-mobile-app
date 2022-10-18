import 'package:flutter/material.dart';

import '../models/car.dart';

class Cars with ChangeNotifier {
  List<Car> _items = [];

  List<Car> get items {
    return [..._items];
  }

  void addCar() {
    // _items.add();
    notifyListeners();
  }
}
