import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/screens/home/view/ui/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined),
      label: 'Categories',
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.calculate_outlined),
      label: 'Calories',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.history_outlined),
      label: 'History',
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Map'),
  ];
  int currentIndex = 0;
  List<Widget> screens = [
    const Center(child: Text('Categories Screen')),
    const HomeScreen(),
    const Center(child: Text('Cart Screen')),
    const Center(child: Text('Calories Screen')),
    const Center(child: Text('History Screen')),
    const Center(child: Text('Map Screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType.shifting,
        items: items,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        selectedIconTheme: const IconThemeData(size: 30),
        selectedFontSize: 16,
      ),
      appBar: AppBar(
        title: const Text('Food App'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list_rounded),
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
