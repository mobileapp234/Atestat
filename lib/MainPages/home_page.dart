// ignore_for_file: unused_import
import 'package:auto_size_text/auto_size_text.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/Menu_by_day/menu_by_day.dart';
import 'package:mobile_app/Widgets/add_food.dart';
import 'package:badges/badges.dart' as badges;
import 'package:mobile_app/Widgets/food_page.dart';
import 'package:mobile_app/Widgets/home_slider.dart';
import 'package:mobile_app/Widgets/menu.dart';
import 'package:mobile_app/Widgets/menu1.dart';
import 'package:mobile_app/Widgets/test.dart';
import 'package:mobile_app/show_food.dart/second_course.dart';
import 'package:mobile_app/show_food.dart/show.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:animated_snack_bar/animated_snack_bar.dart';
import '../Widgets/menu2.dart';
import '../Widgets/menu3.dart';
import 'main_page.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

int day_of_week = -1;
int cpy_menu = 1;
// ignore: non_constant_identifier_names
int first_or_second = 0;
int index_item = 0;
// int categ = -1;

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showMessage() {
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.success,
      body: Center(
        child: Text(
          'Comanda a fost adaugata in cos',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      title: 'This is Ignored',
      desc: 'This is also Ignored',
      btnOkOnPress: () {},
    )..show();
  }

  bool isVerified = false;

  @override
  void initState() {
    super.initState();
    dateTime();
    ind.pressedFromMainPage = false;
    cpy_day_of_week = day_of_week;
  }

  int cpy_day_of_week = -1;
  int loop_rec = 0;
  List<String> v = [];
  void show_food_spects(v) {
    if (loop_rec != 4) {
      if (first_or_second == 2) {
        setState(() {
          cpy_day_of_week = day_of_week + 7;
        });
      }
      int i = -1;
      v.forEach((element) {
        i++;
        if (element == menu_day_photo[cpy_day_of_week]) {
          ind.course_index = loop_rec;
          ind.food = i;
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const FoodPage()));
          // categ = 0;
        }
      });
      setState(() {
        loop_rec++;
      });
      if (loop_rec == 1) show_food_spects(image1);
      if (loop_rec == 2) show_food_spects(image2);
      if (loop_rec == 3) show_food_spects(image3);
    }
  }

  void dateTime() {
    var date = DateTime.now();
    (DateFormat('EEEE').format(date) == 'Monday'
        ? day_of_week = 0
        : DateFormat('EEEE').format(date) == 'Tuesday'
            ? day_of_week = 1
            : DateFormat('EEEE').format(date) == 'Wednesday'
                ? day_of_week = 2
                : DateFormat('EEEE').format(date) == 'Thursday'
                    ? day_of_week = 3
                    : DateFormat('EEEE').format(date) == 'Friday'
                        ? day_of_week = 4
                        : DateFormat('EEEE').format(date) == 'Saturday'
                            ? day_of_week = 5
                            : DateFormat('EEEE').format(date) == 'Sunday'
                                ? day_of_week = 6
                                : DateFormat('EEEE').format(date) == 'lool');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[400],
          title: const Text("T H E M I S  B I S T R O"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                ind.index_bottom_navigation_bar = 0;
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              icon: badges.Badge(
                  badgeContent: Text(ind.nr_products.toString()),
                  badgeAnimation: const badges.BadgeAnimation.rotation(
                    animationDuration: Duration(seconds: 1),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: false,
                    curve: Curves.fastOutSlowIn,
                    colorChangeAnimationCurve: Curves.easeInCubic,
                  ),
                  badgeStyle: const badges.BadgeStyle(badgeColor: Colors.blue),
                  child: const Icon(
                    FontAwesomeIcons.shoppingBasket,
                    color: Colors.black,
                  )),
            )
          ]),
      body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: ListView(scrollDirection: Axis.vertical, children: [
            Column(
              children: [
                const SizedBox(height: 12),
                SafeArea(
                  bottom: true,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.35,
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MenuByDay()),
                                          );
                                        },
                                        child:
                                            const Icon(Icons.calendar_month)),
                                  )
                                ],
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Text(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  badges.Badge(
                                    position: badges.BadgePosition.topStart(),
                                    badgeAnimation:
                                        const badges.BadgeAnimation.fade(
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

                                      padding: const EdgeInsets.all(10),
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2),
                                    ),
                                    badgeContent: Text(
                                      cpy_menu.toString(),
                                      style: const TextStyle(
                                          fontFamily:
                                              "SourceSansPro-Italic.ttf",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          ind.pressedFromMainPage = true;
                                          first_or_second = 1;
                                        });
                                        show_food_spects(image);
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.height *
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
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  menu_day_photo[day_of_week]),
                                              fit: BoxFit.fill),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/png/plus.png"))),
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02),
                                  badges.Badge(
                                    badgeAnimation:
                                        const badges.BadgeAnimation.fade(
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

                                      padding: const EdgeInsets.all(10),
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2),
                                    ),
                                    badgeContent: Text(
                                      cpy_menu.toString(),
                                      style: const TextStyle(
                                          fontFamily:
                                              "SourceSansPro-Italic.ttf",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          ind.pressedFromMainPage = true;
                                          first_or_second = 2;
                                        });
                                        show_food_spects(image);
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.height *
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
                                          image: DecorationImage(
                                              image: AssetImage(menu_day_photo[
                                                  day_of_week + 5]),
                                              fit: BoxFit.fill),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (cpy_menu != 1) cpy_menu--;
                                      });
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.07,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.blue),
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      await Future.delayed(
                                          const Duration(milliseconds: 200),
                                          () {});
                                      setState(() {
                                        showMessage();
                                        nr_menu += cpy_menu;
                                        ind.nr_products += nr_menu;
                                        cpy_menu = 1;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.white),
                                          color: Colors.red[400],
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: AutoSizeText(
                                          "${cpy_menu * menu_day_price[day_of_week]} lei",
                                          style: const TextStyle(
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
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.07,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.blue),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
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
                ),
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
