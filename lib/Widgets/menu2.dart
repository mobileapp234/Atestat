import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Menu2 extends StatefulWidget {
  final String nume1;
  final int pret1;
  final String imagini1;
  const Menu2(
      {super.key,
      required this.nume1,
      required this.pret1,
      required this.imagini1});

  @override
  State<StatefulWidget> createState() {
    return _Menu2();
  }
}

List<String> imagini1 = [
  "assets/images/steak.jpg",
  "assets/images/steak1.jpg",
  "assets/images/steak2.jpg",
  "assets/images/steak3.jpg",
  "assets/images/cake.jpg",
  "assets/images/cocktails.jpg",
];
List<String> nume1 = [
  "Friptura1 ",
  "Friptura2 ",
  "friptura3",
  "Friptura4",
  "lala",
  "ooo"
];
List<int> pret1 = [20, 33, 25, 39, 12, 3];

class _Menu2 extends State<Menu2> {
  int i1 = -2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, int index) {
            i1 += 2;
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
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
                                    image: AssetImage(imagini1[i1]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 12,
                              ),
                              child: AutoSizeText(
                                nume1[i1],
                                style: TextStyle(
                                    fontFamily: "SignikaNegative-Regular",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                                maxLines: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, bottom: 5),
                              child: Text("${pret1[i1]} lei",
                                  style: const TextStyle(fontSize: 18)),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x230E151B),
                              offset: Offset(0, 2),
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
                                    image: AssetImage(imagini1[i1 + 1]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 12,
                              ),
                              child: AutoSizeText(
                                nume1[i1 + 1],
                                style: TextStyle(
                                    fontFamily: "SignikaNegative-Regular",
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                                maxLines: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, bottom: 5),
                              child: Text("${pret1[i1 + 1]} lei",
                                  style: const TextStyle(fontSize: 18)),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            );
          }),
    );
  }
}
