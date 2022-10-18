import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cars.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({super.key});

  static const routeName = '/car-detail';

  @override
  Widget build(BuildContext context) {
    final carId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedCar = Provider.of<Cars>(context, listen: false).findById(carId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedCar.model),
      ),
    );
  }
}
