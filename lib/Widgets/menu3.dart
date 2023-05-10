import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Menu3 extends StatefulWidget {
  const Menu3({super.key});

  @override
  State<Menu3> createState() => _Menu3State();
}

List<String> image3 = [
  "assets/images/cocktails.jpg",
  "assets/images/beverage1.jpg",
  "assets/images/beverage2.jpg",
  "assets/images/beverage3.jpg",
  "assets/images/beverage4.jpg",
  "assets/images/beverage5.jpg",
];
List<String> name3 = [
  "Bautura 1",
  "Bautura 2",
  "Bautura 3",
  "Bautura 4",
  "Bautura 5",
  "Bautura 6",
];
List<int> price3 = [10, 12, 33, 22, 11, 14];

class _Menu3State extends State<Menu3> {
  int i3 = -2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, int index) {
            i3 += 2;
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
                              padding: const EdgeInsets.only(top: 2, bottom: 5),
                              child: Text("${price3[i3]} lei",
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
                              padding: const EdgeInsets.only(top: 2, bottom: 5),
                              child: Text("${price3[i3 + 1]} lei",
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
