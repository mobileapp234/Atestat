import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/Widgets/menu1.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/Widgets/menu3.dart';

import 'menu.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => FoodPageState();
}

class FoodPageState extends State<FoodPage> {
  final PageController _pageController = PageController();
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
                  child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.25,
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
                        fit: BoxFit.fill)),
              )),
              Positioned(
                  top: 210,
                  child: Container(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      height: MediaQuery.of(context).size.height * 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      (ind.course_index == 0
                                          ? name[ind.food]
                                          : ind.course_index == 1
                                              ? name1[ind.food]
                                              : ind.course_index == 2
                                                  ? name2[ind.food]
                                                  : ind.course_index == 3
                                                      ? name3[ind.food]
                                                      : ""),
                                      style: GoogleFonts.actor(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                      )),
                                  Text("2dolari",
                                      style: GoogleFonts.abrilFatface(
                                          fontSize: 20, color: Colors.black)),
                                ]),
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 50, 0, 0)),
                                Text("People",
                                    style: GoogleFonts.almendraSc(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                Text("All from Romania",
                                    style: GoogleFonts.annieUseYourTelescope(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w100))
                              ],
                            ),
                            const SizedBox(height: 10),
                            Wrap(
                              children: List.generate(5, (index) {
                                return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                );
                              }),
                            )
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
