import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

List<String> imagini1 = [
  "assets/images/steak.jpg",
  "assets/images/steak1.jpg",
  "assets/images/steak2.jpg",
  "assets/images/steak3.jpg",
  "assets/images/steak4.jpg",
  "assets/images/friptura-la-cuptor.jpg",
];
List<String> nume1 = [
  "Friptura 1",
  "Friptura 2",
  "friptura 3",
  "Friptura 4",
  "Friptura 5",
  "Friptura 6",
];
List<int> pret1 = [20, 33, 25, 39, 22, 29];

class Menu1 extends StatefulWidget {
  const Menu1({super.key});

  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  int i1 = -2;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.75,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.05)
              ],
            );
          }),
    );
  }
}
