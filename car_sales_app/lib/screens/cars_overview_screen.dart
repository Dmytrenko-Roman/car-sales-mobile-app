import 'package:flutter/material.dart';

import '../widgets/cars_grid.dart';
import '../models/cars.dart';

enum FilterOptions {
  favorites,
  all,
}

class CarsOverviewScreen extends StatefulWidget {
  const CarsOverviewScreen({super.key});

  @override
  State<CarsOverviewScreen> createState() => _CarsOverviewScreenState();
}

class _CarsOverviewScreenState extends State<CarsOverviewScreen> {
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
