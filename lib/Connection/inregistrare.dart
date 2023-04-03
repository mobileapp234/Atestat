import 'dart:math';

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
  final TextEditingController _emailValue1 = TextEditingController();
  final TextEditingController _emailValue2 = TextEditingController();
  final TextEditingController _passwordlValue1 = TextEditingController();

  final TextEditingController _passwordlValue2 = TextEditingController();
  final TextEditingController _passwordlValue3 = TextEditingController();
  late TabController tb;
  bool test = true;
  bool _vizibility = true;
  void _toggleVizibility() {
    setState(() {
      _vizibility = !_vizibility;
    });
  }

  bool _vizibility2 = true;
  void _toggleVizibility2() {
    setState(() {
      _vizibility2 = !_vizibility2;
    });
  }

  int _currentIndex = 0;

  // late FocusNode myFocusNode;

  // void initState1() {
  //   super.initState();

  //   myFocusNode = FocusNode();
  // }

  // void dispose1() {
  //   // Clean up the focus node when the Form is disposed.
  //   myFocusNode.dispose();

  //   super.dispose();
  // }

  //
  void initState() {
    super.initState();
    tb = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tb.dispose();
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    String TB;
    TabController tb1 = TabController(length: 2, vsync: this);
    TabController tb2 = TabController(length: 2, vsync: this);
    @override
    void dispose() {
      tb1.dispose();
      super.dispose();
    }

    void sc(index) {
      setState(() {
        if (index == 0) {
          dispose();
          TB = tb1 as String;
        } else {}
      });
    }

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
                  padding: const EdgeInsets.fromLTRB(130, 80, 0, 40),
                  child: Container(
                      height: 150,
                      //width: 1500,
                      child: Text("Themis Bistro",
                          style: GoogleFonts.robotoMono(
                            fontSize: 42,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )
                          // style: TextStyle(
                          //     fontFamily: "Gloss_And_Bloom",
                          //     fontSize: 40,
                          //     color: Colors.white),
                          )),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Positioned(
              top: 200,
              child: Column(children: [
                SizedBox(
                  //width: 400,
                  height: 100,
                  child: TabBar(
                    onTap: (int index) {
                      if (index == 1) {
                        test = false;
                      }
                    },
                    labelColor: Colors.white,
                    labelPadding: const EdgeInsets.only(left: 70),
                    isScrollable: true,
                    controller: tb,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text("Sign in",
                            style: GoogleFonts.secularOne(
                              fontSize: 30,
                            )),
                        key: const Key("Sign in"),
                      ),
                      Tab(
                        child: Text("Sign up",
                            style: GoogleFonts.secularOne(
                              fontSize: 30,
                            )),
                        key: const Key("Sign up"),
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
                    key: const Key("Sign up"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Center(
                            child: Column(
                          children: [
                            TextField(
                              // focusNode: myFocusNode,
                              controller: _emailValue1,
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
                              controller: _passwordlValue1,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleVizibility,
                                    child: Icon(_vizibility
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              obscureText: _vizibility,
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: const BorderSide(
                                                color: Colors.blue)))),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text("Login".toUpperCase(),
                                      style: const TextStyle(fontSize: 18)),
                                )),
                            const SizedBox(height: 40),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/png/google.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/png/apple.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Center(
                            child: Column(
                          children: [
                            TextField(
                              //onTap: (int index){},
                              controller: _emailValue2,
                              expands: false,
                              maxLines: 1,
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
                              controller: _passwordlValue2,
                              expands: false,
                              maxLines: 1,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleVizibility2,
                                    child: Icon(_vizibility2
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              obscureText: _vizibility2,
                            ),
                            const SizedBox(height: 20),
                            TextField(
                              controller: _passwordlValue3,
                              expands: false,
                              maxLines: 1,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Confirm Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleVizibility2,
                                    child: Icon(_vizibility2
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              obscureText: _vizibility2,
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text("Create Account".toUpperCase(),
                                      style: TextStyle(fontSize: 18)),
                                ),
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Colors.blue)))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MainPage()),
                                  );
                                }),
                            const SizedBox(height: 30),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/png/google.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.white),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/png/apple.png"),
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                )
              ])),
        ],
      ),
    );
  }
}
