import 'package:flutter/material.dart';

import '../models/car.dart';
import '../widgets/car_item.dart';

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
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/VW_Touareg_3.0_TDI_V6_SCR_4Motion_Facelift.JPG/1280px-VW_Touareg_3.0_TDI_V6_SCR_4Motion_Facelift.JPG",
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
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/VW_Passat_B8_Limousine_2.0_TDI_Highline.JPG/800px-VW_Passat_B8_Limousine_2.0_TDI_Highline.JPG",
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
      imageUrl:
          "https://focus.ua/static/storage/thumbs/920x465/6/47/8b8b62c3-a7ecfa242f7c3fd9a1b2197ca618d476.jpg?v=0506_1",
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
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Rolls-Royce_Cullinan_Genf_2019_1Y7A5149.jpg/1200px-Rolls-Royce_Cullinan_Genf_2019_1Y7A5149.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CarSales"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedCars.length,
        itemBuilder: (context, index) => CarItem(
          id: loadedCars[index].id,
          imageUrl: loadedCars[index].imageUrl,
          model: loadedCars[index].model,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}