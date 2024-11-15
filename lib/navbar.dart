import 'package:flutter/material.dart';
import 'package:mobile_app_dev/pages/detailed_food_item.dart';
import 'package:mobile_app_dev/pages/food_items.dart';
import 'package:mobile_app_dev/pages/home_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});


  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0; // state variable to current index

  final List<Widget> _screens = [
    const HomeScreen(),
    FoodItemsScreen(category: 'All',)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _screens[_selectedIndex],
        appBar: AppBar(
          title: const Text("Bakery shop"),
        ),
        backgroundColor: Colors.brown,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.amber,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: 'Food items')
          ],
        ),
      ),
    );
  }
}
