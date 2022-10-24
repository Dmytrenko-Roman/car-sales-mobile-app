import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'car_item.dart';
import '../models/cars.dart';

class CarsGrid extends StatelessWidget {
  final isFavorite;

  CarsGrid({this.isFavorite = false});

  @override
  Widget build(BuildContext context) {
    final carsData = Provider.of<Cars>(context);
    final cars = isFavorite ? carsData.favoriteItems : carsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: cars.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: cars[index],
        child: CarItem(),
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
