import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mobile_app/Connection/objects.dart/sign.in.dart';
import 'package:mobile_app/Connection/objects.dart/sign.up.dart';

class Logare extends StatefulWidget {
  const Logare({super.key});

  @override
  State<Logare> createState() => _LogareState();
}

bool whichpage = false;

class _LogareState extends State<Logare> with TickerProviderStateMixin {
  final textcontoller = TextEditingController();
  late TabController tb;

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
  @override
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
    // TabController tb1 = TabController(length: 2, vsync: this);

    // @override
    // void dispose() {
    //   tb1.dispose();
    //   super.dispose();
    // }

    // void sc(index) {
    //   setState(() {
    //     if (index == 0) {
    //       dispose();
    //       TB = tb1 as String;
    //     } else {}
    //   });
    // }

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
            width: MediaQuery.of(context).size.width,
            // top: 0,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 150,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                      child: AutoSizeText("Themis Bistro",
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: "RobotoMono-Regular",
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 70),
          Positioned(
              top: 200,
              child: Column(children: [
                SizedBox(
                  //width: 400,
                  height: 110,
                  child: TabBar(
                    // onTap: (int index) {
                    //   if (index == 1) {
                    //     test = false;
                    //   }
                    // },
                    labelColor: Colors.white,
                    labelPadding: const EdgeInsets.only(left: 50),
                    isScrollable: true,
                    controller: tb,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(
                        key: Key("Sign in"),
                        child: Text("Sign in",
                            style: TextStyle(
                              fontFamily: "SecularOne-Regular",
                              fontSize: 28,
                            )),
                      ),
                      Tab(
                        key: Key("Sign up"),
                        child: Text("Sign up",
                            style: TextStyle(
                              fontFamily: "SecularOne-Regular",
                              fontSize: 28,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 270,
                  height: 600,
                  child: TabBarView(
                    controller: tb,
                    key: const Key("Sign up"),
                    children: const [SignIn(), SignUp()],
                  ),
                )
              ])),
        ],
      ),
    );
  }
}
