import 'package:flutter/material.dart';

import 'car_item.dart';
import '../models/car.dart';

class CarsGrid extends StatelessWidget {
  const CarsGrid({
    Key? key,
    required this.loadedCars,
  }) : super(key: key);

  final List<Car> loadedCars;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedCars.length,
      itemBuilder: (context, index) => CarItem(
        id: loadedCars[index].id,
        imageUrl: loadedCars[index].imageUrl,
        model: loadedCars[index].model,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
