import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/car_detail_screen.dart';
import '../models/car.dart';

class CarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final car = Provider.of<Car>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            car.model,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              CarDetailScreen.routeName,
              arguments: car.id,
            );
          },
          child: Image.network(car.imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
