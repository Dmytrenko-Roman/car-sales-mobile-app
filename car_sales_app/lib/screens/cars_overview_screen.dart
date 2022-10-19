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
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CarSales"), actions: <Widget>[
        PopupMenuButton(
          onSelected: (FilterOptions selectedValue) {
            setState(() {
              if (selectedValue == FilterOptions.favorites) {
                _showOnlyFavorites = true;
              } else {
                _showOnlyFavorites = false;
              }
            });
          },
          icon: const Icon(Icons.more_vert),
          itemBuilder: ((context) => [
                const PopupMenuItem(
                  value: FilterOptions.favorites,
                  child: Text("Only Favorites"),
                ),
                const PopupMenuItem(
                  value: FilterOptions.all,
                  child: Text("Show All"),
                )
              ]),
        )
      ]),
      body: CarsGrid(_showOnlyFavorites),
    );
  }
}
