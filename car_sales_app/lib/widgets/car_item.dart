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
      footer: GridTileBar(
        title: Text(
          car.model,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
      ),
      child: Image.network(car.imageUrl, fit: BoxFit.cover),
    );
  }
}
