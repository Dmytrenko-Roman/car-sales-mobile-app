import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'car_item.dart';
import '../providers/cars.dart';

class CarsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final carsData = Provider.of<Cars>(context);
    final cars = carsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: cars.length,
      itemBuilder: (context, index) => CarItem(
        id: cars[index].id,
        imageUrl: cars[index].imageUrl,
        model: cars[index].model,
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
