import 'package:flutter/material.dart';

import '../widgets/cars_grid.dart';

class CarsOverviewScreen extends StatelessWidget {
  const CarsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CarSales"),
      ),
      body: CarsGrid(),
    );
  }
}
