// ignore_for_file: unused_field, duplicate_import, unused_import

import 'dart:ffi';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/MainPages/main_page.dart';
import 'package:mobile_app/Widgets/menu1.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/show_food.dart/dessert.dart';
import 'package:mobile_app/show_food.dart/gustari.dart';
import 'package:mobile_app/show_food.dart/show.dart';
import 'package:readmore/readmore.dart';
import 'menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu3.dart';

// ignore: non_constant_identifier_names
double screen_size = 1;
// ignore: non_constant_identifier_names
bool extend_screen = false;
// ignore: non_constant_identifier_names
int product_price = 10;
// ignore: non_constant_identifier_names
int nr_ingredients = 7;
bool showText = false;
List<String> alergeni = [
  "Cereale care conțin gluten (grâu, secară, orz, ovăz, grâ spelt, grâu mare, sau hibrizi ai acestora) și produse derivate",
  "Crustacee și produse derivate",
  "Ouă și produse derivate",
  "Pește și produse derivate",
  "Arahide și produse derivate",
  "Soia și produse derivate",
  " Lapte și produse derivate (inclusiv lactoza)",
];

List<String> ingredients = [
  "Faina",
  "Cacao",
  "3 ora",
  "Praf de copt",
  "Ciocolata",
  "Esenta de vanilie",
  "Fructe de padure",
];

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => FoodPageState();
}

class FoodPageState extends State<FoodPage> {
  bool _isExpanded = false;
  // ignore: non_constant_identifier_names
  int nr_food = 1;
  @override
  void initState() {
    super.initState();
    nr_food = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: [
      Positioned(
          child: ListView(

              // shrinkWrap: false,
              children: [
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * screen_size,
                  child: Stack(children: [
                    Positioned(
                        //top: 0,
                        child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ind.course_index == 0
                                  ? AssetImage(image[ind.food])
                                  : ind.course_index == 1
                                      ? AssetImage(image1[ind.food])
                                      : ind.course_index == 2
                                          ? AssetImage(image2[ind.food])
                                          : ind.course_index == 3
                                              ? AssetImage(image3[ind.food])
                                              : const AssetImage(""),
                              fit: BoxFit.cover)),
                    )),
                    Positioned(
                        left: 10,
                        top: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton(
                              heroTag: 10,
                              backgroundColor: Colors.white,
                              onPressed: () {
                                // if (ind.course_index == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ShowFood()),
                                );
                              },
                              child: const Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.67,
                            ),
                            FloatingActionButton(
                              heroTag: 11,
                              backgroundColor: Colors.white,
                              onPressed: () {
                                ind.index_bottom_navigation_bar = 0;
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                              },
                              child: const Icon(
                                FontAwesomeIcons.basketShopping,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 210,
                        child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            height: MediaQuery.of(context).size.height * 2,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 242, 232, 226),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.08,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.08,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  image: ind.course_index == 0
                                                      ? const AssetImage(
                                                          "assets/png/sandwich-icon (1).png")
                                                      : ind.course_index == 1
                                                          ? const AssetImage(
                                                              "assets/png/cake-cup-icon.png")
                                                          : ind.course_index ==
                                                                  2
                                                              ? const AssetImage(
                                                                  "assets/png/plastic-takeaway-coffee-icon.png")
                                                              : ind.course_index ==
                                                                      3
                                                                  ? const AssetImage(
                                                                      "assets/png/sandwich-icon (1).png")
                                                                  : const AssetImage(
                                                                      ""),
                                                  // fit: BoxFit.cover
                                                )),
                                              ),
                                              Text(ind.course_index == 0
                                                  ? "Gustari"
                                                  : ind.course_index == 1
                                                      ? "Prajituri"
                                                      : ind.course_index == 2
                                                          ? "Cefele"
                                                          : ind.course_index ==
                                                                  3
                                                              ? "Sucuri"
                                                              : "")
                                            ]),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AutoSizeText(
                                          (ind.course_index == 0
                                              ? name[ind.food]
                                              : ind.course_index == 1
                                                  ? name1[ind.food]
                                                  : ind.course_index == 2
                                                      ? name2[ind.food]
                                                      : ind.course_index == 3
                                                          ? name3[ind.food]
                                                          : ""),
                                          style: const TextStyle(
                                              fontFamily:
                                                  "AbrilFatface-Regular",
                                              fontSize: 27,
                                              letterSpacing: 3,
                                              fontWeight: FontWeight.w100),
                                          maxLines: 2,
                                        ),
                                      ]),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       left: 10, top: 10, bottom: 10),
                                  //   child: Text(
                                  //       "  Prăjitura cu ciocolată și zmeură este o combinație perfectă între ciocolată bogată și aroma proaspătă a zmeurelor. Ea îmbină texturi și gusturi într-un mod surprinzător, oferind o experiență dulce de neuitat"),
                                  // ),
                                  Card(
                                    child: Theme(
                                      data: ThemeData.from(
                                        colorScheme: ColorScheme.fromSwatch(
                                            primarySwatch: Colors.lightBlue),
                                      ),
                                      child: ExpansionTile(
                                          title: const Text("Informatii"),
                                          onExpansionChanged: (isExpanded) {
                                            setState(() {
                                              _isExpanded = isExpanded;
                                              // ignore: avoid_print
                                              print(isExpanded);
                                              if (isExpanded == false) {
                                                screen_size = 1;
                                              } else {
                                                screen_size = 1.6;
                                              }
                                            });
                                          },
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    "Ingrediente",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  SizedBox(
                                                      height: nr_ingredients <
                                                              10
                                                          ? MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.2
                                                          : MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.3,
                                                      child: ListView.builder(
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          itemCount: 7,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return Text(
                                                                "• ${ingredients[index]}");
                                                          })),
                                                  const Text(
                                                    "Alergeni",
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.015,
                                                  ),
                                                  SizedBox(
                                                      height: nr_ingredients < 5
                                                          ? MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.2
                                                          : MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.3,
                                                      child: ListView.builder(
                                                          physics:
                                                              const NeverScrollableScrollPhysics(),
                                                          itemCount: 7,
                                                          itemBuilder: (context,
                                                              index1) {
                                                            return Text(
                                                                "• ${alergeni[index1]}");
                                                          })),
                                                ],
                                              ),
                                            )
                                          ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            decoration: BoxDecoration(
                                                color: Colors.orange[100],
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Icon(
                                              FontAwesomeIcons.fire,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                          ),
                                          Text(
                                            (ind.course_index == 0
                                                ? "${calories[ind.food]} Kcal"
                                                : ind.course_index == 1
                                                    ? "${calories1[ind.food]} Kcal"
                                                    : ind.course_index == 2
                                                        ? "${calories2[ind.food]} Kcal"
                                                        : ind.course_index == 3
                                                            ? "${calories3[ind.food]} Kcal"
                                                            : ""),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                //  fontWeight: FontWeight.w900,
                                                fontFamily:
                                                    "CreativeThoughts-Regular"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            decoration: BoxDecoration(
                                                color: Colors.orange[100],
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Icon(
                                              FontAwesomeIcons.fish,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                          ),
                                          Text(
                                            (ind.course_index == 0
                                                ? "${fats[ind.food]}g Gasimi"
                                                : ind.course_index == 1
                                                    ? "${fats2[ind.food]}g Grasimi"
                                                    : ind.course_index == 2
                                                        ? "${fats2[ind.food]}g Grasimi"
                                                        : ind.course_index == 3
                                                            ? "${fats3[ind.food]}g Grasimi"
                                                            : ""),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                //  fontWeight: FontWeight.w900,
                                                fontFamily:
                                                    "CreativeThoughts-Regular"),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            decoration: BoxDecoration(
                                                color: Colors.orange[100],
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Icon(
                                              FontAwesomeIcons.egg,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                          ),
                                          Text(
                                            (ind.course_index == 0
                                                ? "${protein[ind.food]} g proteine"
                                                : ind.course_index == 1
                                                    ? "${protein1[ind.food]} g proteine"
                                                    : ind.course_index == 2
                                                        ? "${protein2[ind.food]} g proteine"
                                                        : ind.course_index == 3
                                                            ? "${protein3[ind.food]} g proteine"
                                                            : ""),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                //  fontWeight: FontWeight.w900,
                                                fontFamily:
                                                    "CreativeThoughts-Regular"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.15,
                                            decoration: BoxDecoration(
                                                color: Colors.orange[100],
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Icon(
                                              FontAwesomeIcons.breadSlice,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                          ),
                                          Text(
                                            (ind.course_index == 0
                                                ? "${carbs[ind.food]}g carbs"
                                                : ind.course_index == 1
                                                    ? "${carbs1[ind.food]}g carbs"
                                                    : ind.course_index == 2
                                                        ? "${carbs2[ind.food]}g carbs"
                                                        : ind.course_index == 3
                                                            ? "${carbs3[ind.food]}g carbs"
                                                            : ""),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                //  fontWeight: FontWeight.w900,
                                                fontFamily:
                                                    "CreativeThoughts-Regular"),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))),
                  ]),
                ),
              ],
            ),
          ])),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.83,
          // left: MediaQuery.of(context).size.width * 0.22,
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(top: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (nr_food > 1) {
                          nr_food -= 1;
                        }
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.09,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      nr_food.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        nr_food += 1;
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.09,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    switch (ind.course_index) {
                      case 0:
                        nr_products[ind.food] += nr_food;
                        break;
                      case 1:
                        nr_products1[ind.food] += nr_food;
                        break;
                      case 2:
                        nr_products2[ind.food] += nr_food;
                        break;
                      case 3:
                        nr_products3[ind.food] += nr_food;
                        break;
                    }
                    setState(() {
                      nr_food = 1;
                    });
                  },
                  heroTag: "2",
                  label: ind.course_index == 0
                      ? Text(
                          "Adauga in cos pentru ${price[ind.food] * nr_food} lei")
                      : ind.course_index == 1
                          ? Text(
                              "Adauga in cos pentru ${price1[ind.food] * nr_food} lei")
                          : ind.course_index == 2
                              ? Text(
                                  "Adauga in cos pentru ${price2[ind.food] * nr_food} lei")
                              : ind.course_index == 3
                                  ? Text(
                                      "Adauga in cos pentru ${price3[ind.food] * nr_food} lei")
                                  : Text(''),
                  //icon: const Icon(Icons.arrow_upward),
                ),
              ),
            ],
          ))
    ]));
  }
}
