class Car {
  final String id;
  final double price;
  final int mileage;
  final int year;
  final String description;
  final double engineVolume;
  final String engineType;
  final int horsepower;
  final String color;
  final int ownersCount;
  final int seatsCount;
  final int doorsCount;
  final String model;
  final String owner;
  final bool isFavorite;
  final String imageUrl;

  Car({
    required this.id,
    required this.price,
    required this.mileage,
    required this.year,
    required this.description,
    required this.engineVolume,
    required this.engineType,
    required this.horsepower,
    required this.color,
    required this.ownersCount,
    required this.seatsCount,
    required this.doorsCount,
    required this.model,
    required this.owner,
    this.isFavorite = false,
    required this.imageUrl,
  });
}
