import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/setings_page.dart';
import 'package:mobile_app/MainPages/show_orders.dart';
import 'home_page.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:badges/badges.dart' as badges;

// import 'package:flutter_icons/flutter_icons.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

String test = "Orders()";

class _MainPageState extends State<MainPage> {
  List pages = [
    // if(ind.showQr==true)
    const ShowOrders(),
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: badges.Badge(
                badgeContent: Text(ind.nr_products.toString()),
                badgeStyle: const badges.BadgeStyle(badgeColor: Colors.blue),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
            label: 'Orders',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setari',
          ),
        ],
      ),
      body: pages[ind.index_bottom_navigation_bar],
    );
  }
}
