// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/Menu_by_day/menu_by_day.dart';
import 'package:mobile_app/Widgets/add_food.dart';
import 'package:badges/badges.dart' as badges;
import 'package:mobile_app/Widgets/home_slider.dart';
import 'package:mobile_app/Widgets/menu.dart';
import 'package:mobile_app/Widgets/test.dart';
import 'package:mobile_app/show_food.dart/second_course.dart';
import 'package:mobile_app/show_food.dart/show.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

int cpy_menu = 1;

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool isVerified = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text("T H E M I S  B I S T R O"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: ListView(scrollDirection: Axis.vertical, children: [
            Column(
              children: [
                const SizedBox(height: 12),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.33,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(110, 255, 153, 0),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Icon(Icons.calendar_month),
                                )
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                "MENIUL ZILEI",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "SourceSansPro-Italic.ttf",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 255, 245, 238)),
                              child: const Text(
                                "Cea mai buna oferta !",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.red,
                                    fontFamily: "SignikaNegative-Regular.ttf",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                badges.Badge(
                                  position: badges.BadgePosition.topStart(),
                                  badgeAnimation: badges.BadgeAnimation.fade(
                                    animationDuration: Duration(seconds: 1),
                                    colorChangeAnimationDuration:
                                        Duration(seconds: 1),
                                    loopAnimation: false,
                                    curve: Curves.fastOutSlowIn,
                                    colorChangeAnimationCurve:
                                        Curves.easeInCubic,
                                  ),
                                  badgeStyle: badges.BadgeStyle(
                                    // shape: badges.BadgeShape.,
                                    badgeColor: Colors.blue,

                                    padding: EdgeInsets.all(10),
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2),
                                  ),
                                  badgeContent: Text(
                                    cpy_menu.toString(),
                                    style: TextStyle(
                                        fontFamily: "SourceSansPro-Italic.ttf",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Color(0x230E151B),
                                          offset: Offset(0, 4),
                                        )
                                      ],
                                      border: Border.all(
                                          color: Colors.white, width: 5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/tomatosoup_13560_16x9.jpg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/png/plus.png"))),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02),
                                badges.Badge(
                                  badgeAnimation: badges.BadgeAnimation.fade(
                                    animationDuration: Duration(seconds: 1),
                                    colorChangeAnimationDuration:
                                        Duration(seconds: 1),
                                    loopAnimation: false,
                                    curve: Curves.fastOutSlowIn,
                                    colorChangeAnimationCurve:
                                        Curves.easeInCubic,
                                  ),
                                  badgeStyle: badges.BadgeStyle(
                                    // shape: badges.BadgeShape.,
                                    badgeColor: Colors.blue,

                                    padding: EdgeInsets.all(10),
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2),
                                  ),
                                  badgeContent: Text(
                                    cpy_menu.toString(),
                                    style: TextStyle(
                                        fontFamily: "SourceSansPro-Italic.ttf",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Color(0x230E151B),
                                          offset: Offset(0, 4),
                                        )
                                      ],
                                      border: Border.all(
                                          color: Colors.white, width: 5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/images/friptura-la-cuptor.jpg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (cpy_menu != 1) cpy_menu--;
                                    });
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.width *
                                        0.07,
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.blue),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    nr_menu = cpy_menu;
                                    ind.nr_products += nr_menu;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                        color: Colors.red[400],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Padding(
                                      padding: EdgeInsets.all(3),
                                      child: Text(
                                        "${cpy_menu * 25} lei",
                                        style: TextStyle(
                                            fontFamily:
                                                "SourceSansPro-Italic.ttf",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      cpy_menu++;
                                    });
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.width *
                                        0.07,
                                    width: MediaQuery.of(context).size.width *
                                        0.07,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.blue),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Adaugati in cos",
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                const Divider(
                  height: 30,
                  thickness: 2,
                  indent: 25,
                  endIndent: 25,
                ),
                Column(children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x230E151B),
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          ind.course_index = 0;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ShowFood()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/istockphoto-614135148-612x612.jpg"),
                                  fit: BoxFit.cover)),
                          alignment: Alignment.center,
                          child: const Text("Gustari",
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1, 3),
                                      blurRadius: 5,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                  fontFamily: "AbrilFatface-Regular.ttf",
                                  fontSize: 40,
                                  color: Colors.white)),
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind.course_index = 1;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ShowFood()));
                    },
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/cake.jpg"),
                                  fit: BoxFit.cover)),
                          alignment: Alignment.center,
                          child: const Text("Prajituri",
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1, 3),
                                      blurRadius: 5,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                  fontFamily: "AbrilFatface-Regular.ttf",
                                  fontSize: 40,
                                  color: Colors.white)),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind.course_index = 2;
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ShowFood()));
                    },
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.21,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/cafea.png"),
                                  fit: BoxFit.cover)),
                          alignment: Alignment.center,
                          child: const Text("Cafea",
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1, 3),
                                      blurRadius: 5,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                  fontFamily: "AbrilFatface-Regular.ttf",
                                  fontSize: 40,
                                  color: Colors.white)),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x230E151B),
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          ind.course_index = 3;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ShowFood()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/pepsi.jpg"),
                                  fit: BoxFit.cover)),
                          alignment: Alignment.center,
                          child: const Text("Sucuri",
                              style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1, 3),
                                      blurRadius: 5,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                  fontFamily: "AbrilFatface-Regular.ttf",
                                  fontSize: 40,
                                  color: Colors.white)),
                        ),
                      )),
                ])
              ],
            ),
          ])),
    );
  }
}
