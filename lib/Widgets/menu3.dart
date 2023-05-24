import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

import 'food_page.dart';

class Menu3 extends StatefulWidget {
  const Menu3({super.key});

  @override
  State<Menu3> createState() => _Menu3State();
}

List<String> image3 = [
  "assets/images/pepsi1.jpg",
  "assets/images/pepsi2.jpg",
  "assets/images/fanta1.jpg",
  "assets/images/fanta2.jpg",
  "assets/images/Sprite1.jpg",
  "assets/images/apa.jpg",
];
List<String> name3 = [
  "Pepsi 1",
  "Pepsi 2",
  "Fanta 1",
  "Fanta 2",
  "Sprite 1",
  "Apa 1",
];
List<int> price3 = [10, 6, 8, 4, 7, 4];
List<int> nr_products3 = [0, 0, 0, 0, 0, 0];

class _Menu3State extends State<Menu3> {
  int i3 = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, i3) {
            if (i3 > 0) i3++;
            if (i3 > 2) i3++;
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ind.food = i3;
                          ind.course_index = 3;
                        });
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FoodPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(1, 3),
                              )
                            ]),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: double.infinity,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(image3[i3]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                ),
                                child: AutoSizeText(
                                  name3[i3],
                                  style: const TextStyle(
                                      fontFamily: "SignikaNegative-Regular",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, bottom: 5),
                                child: Text("${price3[i3]} lei",
                                    style: const TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ind.food = i3 + 1;
                          ind.course_index = 3;
                        });
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FoodPage()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(1, 3),
                              )
                            ]),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: double.infinity,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(image3[i3 + 1]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                ),
                                child: AutoSizeText(
                                  name3[i3 + 1],
                                  style: const TextStyle(
                                      fontFamily: "SignikaNegative-Regular",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, bottom: 5),
                                child: Text("${price3[i3 + 1]} lei",
                                    style: const TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02)
              ],
            );
          }),
    );
  }
}
