import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/Widgets/menu1.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/Widgets/menu3.dart';
import 'package:readmore/readmore.dart';
import 'menu.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Stack(children: [
              Positioned(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1.5,
              )),
              Positioned(
                  // top: 0,
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
                                        : AssetImage(""),
                        fit: BoxFit.cover)),
              )),
              Positioned(
                  left: 10,
                  top: 10,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                    ),
                  )),
              Positioned(
                  top: 210,
                  child: Container(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      height: MediaQuery.of(context).size.height * 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 242, 232, 226),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.local_drink_outlined),
                                        Text("Cafele")
                                      ]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                        fontFamily: "AbrilFatface-Regular",
                                        fontSize: 27,
                                        letterSpacing: 3,
                                        fontWeight: FontWeight.w100),
                                    maxLines: 2,
                                  ),
                                ]),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ReadMoreText(
                                    "Prăjitura cu ciocolată și zmeură este o combinație perfectă între ciocolată bogată și aroma proaspătă a zmeurelor. Ea îmbină texturi și gusturi într-un mod surprinzător, oferind o experiență dulce de neuitat.",
                                    trimCollapsedText: "Citeste mai mult",
                                    trimExpandedText: "...Citeste mai putin",
                                    trimLength: 100,
                                    trimMode: TrimMode.Length,
                                    style: TextStyle(
                                      color: Colors.black, // Default color
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Card(
                              child: Theme(
                                data: ThemeData.from(
                                  colorScheme: ColorScheme.fromSwatch(
                                      primarySwatch: Colors.lightBlue),
                                ),
                                child: ExpansionTile(
                                    title: Text("Informatii"),
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Ingrediente",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Container(
                                                height: nr_ingredients < 10
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.2
                                                    : MediaQuery.of(context)
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
                                            Text(
                                              "Alergeni",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.015,
                                            ),
                                            Container(
                                                height: nr_ingredients < 5
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.2
                                                    : MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.3,
                                                child: ListView.builder(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    itemCount: 7,
                                                    itemBuilder:
                                                        (context, index1) {
                                                      return Text(
                                                          "• ${alergeni[index1]}");
                                                    })),
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            )
                            // Row(
                            //   children: [
                            //     const Padding(
                            //         padding: EdgeInsets.fromLTRB(10, 50, 0, 0)),
                            //     Text("People",
                            //         style: GoogleFonts.almendraSc(
                            //           fontSize: 40,
                            //           fontWeight: FontWeight.bold,
                            //           color: Colors.white,
                            //         )),
                            //   ],
                            // ),
                            // const SizedBox(height: 1),
                            // Row(
                            //   children: [
                            //     Text("All from Romania",
                            //         style: GoogleFonts.annieUseYourTelescope(
                            //             fontSize: 22,
                            //             fontWeight: FontWeight.w100))
                            //   ],
                            // ),
                            // const SizedBox(height: 10),
                            // Wrap(
                            //   children: List.generate(5, (index) {
                            //     return Padding(
                            //       padding: const EdgeInsets.all(5.0),
                            //       child: Container(
                            //           height: 60,
                            //           width: 60,
                            //           decoration: BoxDecoration(
                            //               color: Colors.black12,
                            //               borderRadius:
                            //                   BorderRadius.circular(15))),
                            //     );
                            //   }),
                            // )
                          ],
                        ),
                      ))),
            ]),
          ],
        )
      ]),
    );
  }
}
