import 'package:flutter/material.dart';

import '../screens/car_detail_screen.dart';

class CarItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String model;

  const CarItem({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            model,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              CarDetailScreen.routeName,
              arguments: id,
            );
          },
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
