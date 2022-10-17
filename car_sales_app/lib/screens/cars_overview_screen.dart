import 'package:flutter/material.dart';

import '../models/car.dart';

class CarsOverviewScreen extends StatelessWidget {
  CarsOverviewScreen({super.key});

  final List<Car> loadedCars = [
    Car(
      id: "c1",
      price: 52545.25,
      mileage: 125000,
      year: 2015,
      description: "This is a brand new VW Touareg",
      engineVolume: 3.0,
      engineType: "Diesel",
      horsepower: 267,
      color: "white",
      ownersCount: 2,
      seatsCount: 5,
      doorsCount: 5,
      model: "Volkswagen Touareg",
      owner: "nemesis",
    ),
    Car(
      id: "c2",
      price: 24876.19,
      mileage: 100432,
      year: 2017,
      description: "This is a brand new VW Passat",
      engineVolume: 1.8,
      engineType: "Turbo Diesel",
      horsepower: 190,
      color: "grey",
      ownersCount: 1,
      seatsCount: 5,
      doorsCount: 5,
      model: "Volkswagen Passat",
      owner: "sylvenis",
    ),
    Car(
      id: "c3",
      price: 124890.00,
      mileage: 16000,
      year: 2021,
      description: "This is a brand new Range Rover Sport",
      engineVolume: 3.2,
      engineType: "Diesel",
      horsepower: 320,
      color: "red",
      ownersCount: 2,
      seatsCount: 5,
      doorsCount: 5,
      model: "Range Rover Sport",
      owner: "VsIG",
    ),
    Car(
      id: "c4",
      price: 400789.00,
      mileage: 5000,
      year: 2020,
      description: "This is a brand new Rolls-Royce Cullinan",
      engineVolume: 5.2,
      engineType: "Diesel",
      horsepower: 598,
      color: "black",
      ownersCount: 1,
      seatsCount: 5,
      doorsCount: 5,
      model: "Rolls-Royce Cullinan",
      owner: "atom1c",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
