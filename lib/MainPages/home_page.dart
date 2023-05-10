import 'package:flutter/material.dart';

import 'package:mobile_app/Widgets/home_slider.dart';
import 'package:mobile_app/show_food.dart/show.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool isVerified = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: const Text("T H E M I S  B I S T R O"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_sharp))
          ],
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 12),
              const SizedBox(
                  height: 200, width: double.infinity, child: HomeSlider()),
              const Divider(
                height: 30,
                thickness: 2,
                indent: 25,
                endIndent: 25,
              ),

              // const ChooseFoodType(),

              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(110, 255, 153, 0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x230E151B),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.5,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              const Text(
                                "MENIUL ZILEI",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "SourceSansPro-Italic.ttf",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 245, 238)),
                            child: const Text(
                              "Cea mai buna oferta !",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.red,
                                  fontFamily: "SignikaNegative-Regular.ttf",
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x230E151B),
                                      offset: Offset(0, 4),
                                    )
                                  ],
                                  border:
                                      Border.all(color: Colors.white, width: 5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/tomatosoup_13560_16x9.jpg"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/png/plus.png"))),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x230E151B),
                                      offset: Offset(0, 4),
                                    )
                                  ],
                                  border:
                                      Border.all(color: Colors.white, width: 5),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/friptura-la-cuptor.jpg"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                child: const Icon(Icons.info_rounded),
                                onTap: () {},
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red[400],
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Text(
                                    "25 lei",
                                    style: TextStyle(
                                        fontFamily: "SourceSansPro-Italic.ttf",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 30),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Icon(
                                  isVerified
                                      ? (Icons.verified)
                                      : Icons.add_shopping_cart_outlined,
                                ),
                                onTap: () {
                                  setState(() {
                                    isVerified = !isVerified;
                                  });
                                },
                                // color: isVerified ? Colors.grey : null,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              const Divider(
                height: 30,
                thickness: 2,
                indent: 25,
                endIndent: 25,
              ),

              Column(children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.21,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const Show()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/June21-chicken-noodle-soup-976x549.jpg"),
                                fit: BoxFit.cover)),
                        alignment: Alignment.center,
                        child: const Text("Supe",
                            style: TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1, 3),
                                    blurRadius: 5,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  // Shadow(
                                  //   offset: Offset(10.0, 10.0),
                                  //   blurRadius: 8.0,
                                  //   color: Color.fromARGB(125, 0, 0, 255),
                                  // ),
                                ],
                                fontFamily: "AbrilFatface-Regular.ttf",
                                fontSize: 40,
                                color: Colors.white)),
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.21,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/steak.jpg"),
                              fit: BoxFit.cover)),
                      alignment: Alignment.center,
                      child: const Text("Fripturi",
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1, 3),
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                // Shadow(
                                //   offset: Offset(10.0, 10.0),
                                //   blurRadius: 8.0,
                                //   color: Color.fromARGB(125, 0, 0, 255),
                                // ),
                              ],
                              fontFamily: "AbrilFatface-Regular.ttf",
                              fontSize: 40,
                              color: Colors.white)),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.21,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/cake.jpg"),
                              fit: BoxFit.cover)),
                      alignment: Alignment.center,
                      child: const Text("Prajituri",
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1, 3),
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              fontFamily: "AbrilFatface-Regular.ttf",
                              fontSize: 40,
                              color: Colors.white)),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.21,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/cocktails.jpg"),
                              fit: BoxFit.cover)),
                      alignment: Alignment.center,
                      child: const Text("Bauturi",
                          style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1, 3),
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              fontFamily: "AbrilFatface-Regular.ttf",
                              fontSize: 40,
                              color: Colors.white)),
                    )),
              ])

              // for (int i = 1; i <= 10; i++)

              //   ValueListenableBuilder<int>(
              //     valueListenable: _counter,
              //     builder: (BuildContext context, int value, widget) {
              //       return Column(
              //         children: [
              //           Menu(
              //             nume: nume[c.categorie.value],
              //             pret: pret[c.categorie.value],
              //             imagini: imagini[c.categorie.value],
              //           ),
              //           const SizedBox(height: 20),
              //         ],
              //       );
              //     },
              //   )

              // return
            ],
          ),
        ]));
  }
}
