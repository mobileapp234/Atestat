import 'package:flutter/material.dart';
import 'package:mobile_app/show_food.dart/dessert.dart';
import 'package:mobile_app/show_food.dart/drinks.dart';
import 'package:mobile_app/show_food.dart/second_course.dart';
import 'package:mobile_app/show_food.dart/soups_page.dart';

class Show extends StatefulWidget {
  const Show({super.key});

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> with TickerProviderStateMixin {
  late TabController tb;

  @override
  void initState() {
    super.initState();

    // Initialize the TabController with the number of tabs
    tb = TabController(length: 4, vsync: this);

    // Listen to the TabController and update the variable when the tab changes
    // tb.addListener(() {
    //   setState(() {
    //     // c.categorie = tb.index;
    //   });
    // });
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
          backgroundColor: Colors.red,
          title: const Text("T H E M I S  B I S T R O"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_sharp))
          ],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
            child: TabBar(
                controller: tb,
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorWeight: 3,
                tabs: const [
                  Text(
                    "Supe",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Felul 2",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Prajituri",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Bauturi",
                    style: TextStyle(fontSize: 30),
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          controller: tb,
          children: const [Soups(), SecondCourse(), Desserts(), Drinks()],
        ));
  }
}
