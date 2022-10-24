import 'package:flutter/material.dart';

import '../widgets/cars_grid.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Favorites"),
      ),
      body: CarsGrid(isFavorite: true),
    );
  }
}
