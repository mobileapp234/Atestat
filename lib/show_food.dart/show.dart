import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/MainPages/main_page.dart';
import 'package:mobile_app/show_food.dart/dessert.dart';
import 'package:mobile_app/show_food.dart/coffee.dart';
import 'package:mobile_app/show_food.dart/gustari.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/show_food.dart/soda.dart';
import 'package:badges/badges.dart' as badges;

class ShowFood extends StatefulWidget {
  const ShowFood({super.key});

  @override
  State<ShowFood> createState() => _ShowFoodState();
}

class _ShowFoodState extends State<ShowFood> with TickerProviderStateMixin {
  late TabController tb;

  @override
  void initState() {
    super.initState();

    tb = TabController(length: 4, vsync: this);

    // tb.addListener(() {
    //   setState(() {
    //     tb.index = c.course_index;
    //     // c.categorie = tb.index;
    //   });
    // });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    tb.index = ind.course_index;
  }

  @override
  void dispose() {
    tb.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title: const Text("T H E M I S  B I S T R O"),
          centerTitle: true,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            },
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  ind.index_bottom_navigation_bar = 0;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MainPage()));
                },
                icon: badges.Badge(
                    badgeContent: Text(ind.nr_products.toString()),
                    child: const Icon(
                      FontAwesomeIcons.shoppingBasket,
                      color: Colors.black,
                    ),
                    badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue)))
          ],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.06),
            child: TabBar(
                controller: tb,
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorWeight: 4,
                tabs: const [
                  Text(
                    "Gustari",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Prajituri",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Cafea",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Sucuri",
                    style: TextStyle(fontSize: 30),
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          controller: tb,
          children: const [Gustari(), Desserts(), Coffee(), Soda()],
        ));
  }
}
