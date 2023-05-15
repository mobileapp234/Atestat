import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/Widgets/menu1.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/Widgets/menu3.dart';
import 'package:readmore/readmore.dart';
import 'menu.dart';

bool showText = false;

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
                                    "sefg ekfhih iuefg fiusef iseufg iubf fkefg fuied fiuebfiyewr fi dsjgf jhfg jhgfuyfg jsdyfg jydfg jhdygf jygf kjhbf kusygdf fj fjehrfv jehrvjsefh fkj jsef ksdfhkfg jsdfgfyg sdf dsfd dsjf er  riu iu iurwvh i tiu iru  v  riu iu  igigfirfgb  ifygg ifyg",
                                    trimCollapsedText: "Citeste mai mult",
                                    trimExpandedText: "...Citeste mai putin",
                                    trimLength: 70,
                                    trimMode: TrimMode.Length,
                                    style: TextStyle(
                                      color: Colors.black, // Default color
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Informatii",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "SourceSansPro-Italic"),
                                  ),
                                ),
                              ],
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
