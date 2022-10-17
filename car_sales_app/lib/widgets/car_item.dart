import 'package:flutter/material.dart';

import '../models/car.dart';

class CarItem extends StatelessWidget {
  final Car car;

  const CarItem({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(car.imageUrl),
    );
  }
}
