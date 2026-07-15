import 'package:flutter/material.dart';
import 'package:task1/contact.dart';
import 'package:task1/cart.dart';
import 'package:task1/info.dart';
import 'package:task1/discover.dart';
import 'package:task1/home.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

int selectedIndex = 0;
List list1 = [
  HomeScreen(),
  InfoScreen(),
  DiscoverScreen(),
  CartScreen(),
  ContactScreen(),
];

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list1[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.red),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        currentIndex: selectedIndex,
        iconSize: 24,
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.white, fontSize: 16),
        unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 16),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,

        onTap: (n) {
          setState(() {
            selectedIndex = n;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: " ",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.notifications_outlined),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: "Discovers",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.shopping_bag),
            label: " ",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.person),
            label: " ",
          ),
        ],
      ),
    );
  }
}
