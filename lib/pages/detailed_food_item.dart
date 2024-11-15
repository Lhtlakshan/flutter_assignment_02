import 'package:flutter/material.dart';

class FoodItemDetails {
  final String name;
  final String category;
  final String description;
  final String image;

  FoodItemDetails({
    required this.name,
    required this.category,
    required this.description,
    required this.image,
  });
}

class DetailedFoodItemScreen extends StatelessWidget {
  final FoodItemDetails foodItem;

  const DetailedFoodItemScreen({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodItem.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              foodItem.image,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              foodItem.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.brown),
            ),
            const SizedBox(height: 10),
            Text(
              "Category: ${foodItem.category}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              foodItem.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
