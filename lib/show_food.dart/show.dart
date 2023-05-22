import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/main_page.dart';
import 'package:mobile_app/show_food.dart/dessert.dart';
import 'package:mobile_app/show_food.dart/drinks.dart';
import 'package:mobile_app/show_food.dart/second_course.dart';
import 'package:mobile_app/show_food.dart/gustari.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

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

    tb = TabController(length: 3, vsync: this);

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
            child: Icon(
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
                icon: const Icon(Icons.shopping_cart_sharp))
          ],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.06),
            child: TabBar(
                controller: tb,
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorWeight: 3,
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
                    "Bauturi",
                    style: TextStyle(fontSize: 30),
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          controller: tb,
          children: [Gustari(), Desserts(), Drinks()],
        ));
  }
}
