import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

import 'food_page.dart';

class Menu2 extends StatefulWidget {
  const Menu2({super.key});

  @override
  State<Menu2> createState() => _Menu2State();
}

List<String> image2 = [
  "assets/images/cafea1.jpg",
  "assets/images/cafea2.jpg",
  "assets/images/cafea3.jpg",
  "assets/images/cafea4.jpg",
  "assets/images/cafea5.jpg",
  "assets/images/cafea6.jpg",
];
List<String> name2 = [
  "Cafea 1",
  "Cafea 2",
  "Cafea 3",
  "Cafea 4",
  "Cafea 5",
  "Cafea 6",
];
List<int> price2 = [10, 8, 33, 9, 11, 14];
List<int> nr_products2 = [0, 0, 0, 0, 0, 0];
List<int> calories2 = [5, 10, 2, 7, 15, 0];
List<int> protein2 = [0, 0, 0, 0, 0, 0];
List<int> fats2 = [0, 0, 0, 0, 0, 0];
List<int> carbs2 = [1, 2, 0, 1, 3, 0];

class _Menu2State extends State<Menu2> {
  int i2 = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, i2) {
            if (i2 > 0) i2++;
            if (i2 > 2) i2++;
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ind.food = i2;
                          ind.course_index = 2;
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
                                      image: AssetImage(image2[i2]),
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
                                  name2[i2],
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
                                child: Text("${price2[i2]} lei",
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
                          ind.food = i2 + 1;
                          ind.course_index = 2;
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
                                      image: AssetImage(image2[i2 + 1]),
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
                                  name2[i2 + 1],
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
                                child: Text("${price2[i2 + 1]} lei",
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
