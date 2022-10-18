import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/cars_overview_screen.dart';
import './screens/car_detail_screen.dart';
import './providers/cars.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    fontFamily: 'Lato',
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cars(),
      child: MaterialApp(
          title: 'MyShop',
          theme: theme.copyWith(
            colorScheme: theme.colorScheme.copyWith(
              primary: Colors.green,
              secondary: Colors.white,
            ),
          ),
          home: const CarsOverviewScreen(),
          routes: {
            CarDetailScreen.routeName: (context) => const CarDetailScreen(),
          }),
    );
  }
}
