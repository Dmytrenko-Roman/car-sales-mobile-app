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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            car.model,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        child: Image.network(car.imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
