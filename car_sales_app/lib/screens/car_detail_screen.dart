import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cars.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({super.key});

  static const routeName = '/car-detail';

  @override
  Widget build(BuildContext context) {
    final carId = ModalRoute.of(context)?.settings.arguments as String;
    final carProvider = Provider.of<Cars>(context);
    final loadedCar = carProvider.findById(carId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedCar.model),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedCar.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(loadedCar.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border),
                  onPressed: () {
                    carProvider.changeIsFavoriteById(carId);
                  },
                  color: Theme.of(context).colorScheme.primary,
                ),
                Text(
                  loadedCar.model,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
