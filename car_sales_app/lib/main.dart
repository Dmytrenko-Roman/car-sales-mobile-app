import 'package:flutter/material.dart';

import './screens/cars_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    fontFamily: 'Lato',
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green,
          secondary: Colors.white,
        ),
      ),
      home: CarsOverviewScreen(),
    );
  }
}
