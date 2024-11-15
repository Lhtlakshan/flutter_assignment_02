import 'package:flutter/material.dart';
import 'detailed_food_item.dart';

class FoodItemsScreen extends StatelessWidget {
  final String category;

  FoodItemsScreen({super.key, required this.category});

  final List<FoodItemDetails> allFoodItems = [
    FoodItemDetails(
      name: "Cheeseburger",
      category: "Burgers",
      description: "Juicy cheeseburger with toppings",
      image: "../assets/images/burger.jpg",
    ),
    FoodItemDetails(
      name: "Chicken cheese burger",
      category: "Burgers",
      description: "Chicken burger with toppings",
      image: "../assets/images/burger.jpg",
    ),
    FoodItemDetails(
      name: "Polos burger",
      category: "Burgers",
      description: "Polos burger with toppings",
      image: "../assets/images/burger.jpg",
    ),
    FoodItemDetails(
      name: "Veggie Pizza",
      category: "Pizza",
      description: "Delicious veggie pizza",
      image: "../assets/images/pizza.jpg",
    ),
    FoodItemDetails(
      name: "Thandoori Chicken Pizza",
      category: "Pizza",
      description: "Delicious Thandoori Chicken pizza",
      image: "../assets/images/pizza.jpg",
    ),
    FoodItemDetails(
      name: "Cheese Pizza",
      category: "Pizza",
      description: "Delicious cheese pizza",
      image: "../assets/images/pizza.jpg",
    ),
    FoodItemDetails(
      name: "Chicken Bun",
      category: "Buns",
      description: "Soft bun filled with chicken",
      image: "../assets/images/buns.jpg",
    ),
    FoodItemDetails(
      name: "Beef Bun",
      category: "Buns",
      description: "Soft bun filled with beef",
      image: "../assets/images/buns.jpg",
    ),
    FoodItemDetails(
      name: "Chicken Koththu",
      category: "Koththu",
      description: "Spicy chicken koththu",
      image: "../assets/images/buns.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<FoodItemDetails> displayedItems = category == "All"
        ? allFoodItems
        : allFoodItems.where((item) => item.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("$category Items"),
      ),
      body: ListView.builder(
        itemCount: displayedItems.length,
        itemBuilder: (context, index) {
          final item = displayedItems[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                item.image,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
              title: Text(item.name),
              subtitle: Text(item.description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedFoodItemScreen(foodItem: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
