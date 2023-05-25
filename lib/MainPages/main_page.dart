import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mobile_app/MainPages/orders.dart';
import 'package:mobile_app/MainPages/setings_page.dart';
import 'home_page.dart';
import '../Widgets/food_page.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

// import 'package:flutter_icons/flutter_icons.dart';
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

  void apasare(index) {
    setState(() {
      ind.index_bottom_navigation_bar = index;
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
        currentIndex: ind.index_bottom_navigation_bar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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
      body: pages[ind.index_bottom_navigation_bar],
    );
  }
}
