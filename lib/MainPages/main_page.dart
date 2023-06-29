import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/MainPages/orders.dart';
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
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                // badgeAnimation: badges.BadgeAnimation.rotation(
                //   animationDuration: Duration(seconds: 1),
                //   colorChangeAnimationDuration: Duration(seconds: 1),
                //   loopAnimation: false,
                //   curve: Curves.fastOutSlowIn,
                //   colorChangeAnimationCurve: Curves.easeInCubic,
                // ),
                badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue)),
            label: 'Orders',
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
