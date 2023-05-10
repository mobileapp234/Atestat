import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Menu2 extends StatefulWidget {
  const Menu2({super.key});

  @override
  State<Menu2> createState() => _Menu2State();
}

List<String> image2 = [
  "assets/images/cake.jpg",
  "assets/images/cake2.jpg",
  "assets/images/cake1.jpg",
  "assets/images/cake4.jpg",
  "assets/images/cake5.jpg",
  "assets/images/cake3.jpg",
];
List<String> name2 = [
  "Prajitura 1",
  "Prijitura 2",
  "Prajitura 3",
  "Prajitura 4",
  "Prajitura 5",
  "Prajitura 6",
];
List<int> price2 = [8, 10, 12, 7, 9, 18];

class _Menu2State extends State<Menu2> {
  int i2 = -2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext ctxt, int index) {
            i2 += 2;
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
                              padding: const EdgeInsets.only(top: 2, bottom: 5),
                              child: Text("${price2[i2]} lei",
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
                              padding: const EdgeInsets.only(top: 2, bottom: 5),
                              child: Text("${price2[i2 + 1]} lei",
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
