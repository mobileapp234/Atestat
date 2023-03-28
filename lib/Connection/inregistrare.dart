import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/MainPages/main_page.dart';
//import '';

class Logare extends StatefulWidget {
  const Logare({super.key});

  @override
  State<Logare> createState() => _LogareState();
}

class _LogareState extends State<Logare> with TickerProviderStateMixin {
  final textcontoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TabController tb = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.black38, BlendMode.darken)),
              ),
              //color: Colors.black54,
            ),
          ),
          Positioned(
            // top: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 100, 40, 40),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                    )),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 200,
              child: Column(children: [
                SizedBox(
                  //width: 400,
                  height: 100,
                  child: TabBar(
                    labelColor: Colors.white,
                    labelPadding: const EdgeInsets.only(left: 60),
                    isScrollable: true,
                    controller: tb,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(
                        child: Text("Login in",
                            style: TextStyle(
                                fontFamily: "Gloss_And_Bloom", fontSize: 30)),
                      ),
                      Tab(
                        child: Text("Sign in",
                            style: TextStyle(
                                fontFamily: "Gloss_And_Bloom", fontSize: 30)),
                      ),
                    ],
                  ),
                ),
                /*
                Container(
                  width: 30,
                  height: 30,
                  child: TabBarView(
                    controller: tb,
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            top: 50.0,
                            left: 20.0,
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter text here',
                                  border: OutlineInputBorder(),
                                ),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                keyboardType: TextInputType.text,
                                // Add other properties here
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Positioned(
                            top: 50.0,
                            left: 20.0,
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter text here',
                                  border: OutlineInputBorder(),
                                ),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                keyboardType: TextInputType.text,
                                // Add other properties here
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
*/

                Container(
                  width: 100,
                  height: 100,
                  child: TabBarView(
                    controller: tb,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: TextField(

                                      // maxLines: 2,
                                      //maxLength: 10,
                                      controller: textcontoller,
                                      decoration: InputDecoration(
                                          hintText: "shjfa",
                                          border: OutlineInputBorder())))
                            ]),
                      ),
                      Center(child: Text("uii")),
                    ],
                  ),
                )
              ])),
          Positioned(
            left: 30,
            top: 500,
            child: FloatingActionButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            }),
          )
        ],
      ),
    );
  }
}
