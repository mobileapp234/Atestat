import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mobile_app/MainPages/setings_page.dart';
import 'home_page.dart';
import 'menu_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const ManuPage(),
    const SetingsPage(),
  ];

  int curentIndex = 0;
  void apasare(index) {
    setState(() {
      curentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        onTap: apasare,
        backgroundColor:
            curentIndex == 1 ? Colors.lightBlue.shade200 : Colors.white,
        color: curentIndex == 0
            ? Colors.orange.shade400
            : curentIndex == 1
                ? Colors.red
                : Colors.lightBlue,
        animationDuration: const Duration(milliseconds: 350),
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.restaurant_rounded,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[curentIndex],
    );
  }
}
