import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/MainPages/main_page.dart';

class Logare extends StatefulWidget {
  const Logare({super.key});

  @override
  State<Logare> createState() => _LogareState();
}

bool whichpage = false;

class _LogareState extends State<Logare> with TickerProviderStateMixin {
  final textcontoller = TextEditingController();
  final TextEditingController _emailValue = TextEditingController();
  final TextEditingController _passwordlValue = TextEditingController();
  bool vizibility = true;
  void _toggleVizibility() {
    setState(() {
      vizibility = !vizibility;
    });
  }

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
            ),
          ),
          Positioned(
            // top: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 140, 40, 40),
                  child: Container(
                    height: 100,
                    child: const Text(
                      "Themis Bistro",
                      style: TextStyle(
                          fontFamily: "Gloss_And_Bloom",
                          fontSize: 40,
                          color: Colors.white),
                    ),
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
                    labelPadding: const EdgeInsets.only(left: 55),
                    isScrollable: true,
                    controller: tb,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text("Sing in",
                            style: GoogleFonts.secularOne(
                              fontSize: 35,
                            )),
                      ),
                      Tab(
                        child: Text("Sing up",
                            style: GoogleFonts.secularOne(
                              fontSize: 35,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 270,
                  height: 400,
                  child: TabBarView(
                    controller: tb,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Center(
                            child: Column(
                          children: [
                            TextField(
                              controller: _emailValue,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Email Address',
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              controller: _passwordlValue,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleVizibility,
                                    child: Icon(_),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              obscureText: true,
                            ),
                          ],
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Center(
                            child: Column(
                          children: [
                            TextField(
                              controller: _emailValue,
                              expands: false,
                              maxLines: 1,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Email Address',
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              controller: _passwordlValue,
                              expands: false,
                              maxLines: 1,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Password',
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              controller: _passwordlValue,
                              expands: false,
                              maxLines: 1,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Confirm Password',
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ],
                        )),
                      ),
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
