import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

import 'food_page.dart';

List<String> image1 = [
  "assets/images/cake.jpg",
  "assets/images/cake1.jpg",
  "assets/images/cake2.jpg",
  "assets/images/cake3.jpg",
  "assets/images/cake4.jpg",
  "assets/images/cake5.jpg",
];
List<String> name1 = [
  "Prajitura 1",
  "Prajitura 2",
  "Prajitura 3",
  "Prajitura 4",
  "Prajitura 5",
  "Prajitura 6",
];
List<int> price1 = [10, 13, 15, 12, 14, 22];
List<int> nr_products1 = [0, 0, 0, 0, 0, 0];

class Menu1 extends StatefulWidget {
  const Menu1({super.key});

  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  int i1 = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, i1) {
            if (i1 > 0) i1++;
            if (i1 > 2) i1++;

            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ind.food = i1;
                          ind.course_index = 1;
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
                                      image: AssetImage(image1[i1]),
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
                                  name1[i1],
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
                                child: Text("${price1[i1]} lei",
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
                          ind.food = i1 + 1;
                          ind.course_index = 1;
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
                                      image: AssetImage(image1[i1 + 1]),
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
                                  name1[i1 + 1],
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
                                child: Text("${price1[i1 + 1]} lei",
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
