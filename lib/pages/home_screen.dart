import 'package:flutter/material.dart';
import 'food_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("All"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodItemsScreen(category: "All"),
                  ),
                );
              },
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              child: const Text("Burgers"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodItemsScreen(category: "Burgers"),
                  ),
                );
              },
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              child: const Text("Pizza"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodItemsScreen(category: "Pizza"),
                  ),
                );
              },
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              child: const Text("Buns"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodItemsScreen(category: "Buns"),
                  ),
                );
              },
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              child: const Text("Koththu"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodItemsScreen(category: "Koththu"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
