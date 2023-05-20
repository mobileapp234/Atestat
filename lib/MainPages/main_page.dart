import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mobile_app/MainPages/orders.dart';
import 'package:mobile_app/MainPages/setings_page.dart';
import 'home_page.dart';
import '../Widgets/food_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const Orders(),
    const HomePage(),
    const SetingsPage(),
  ];

  int curentIndex = 1;
  void apasare(index) {
    setState(() {
      curentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[300],
        unselectedItemColor: Colors.blueGrey,
        onTap: apasare,
        currentIndex: curentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp),
            label: 'Comenzi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setari',
          ),
        ],
      ),
      body: pages[curentIndex],
    );
  }
}
