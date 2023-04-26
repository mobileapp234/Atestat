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
    tb =
        TabController(animationDuration: Duration.zero, length: 2, vsync: this);
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
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken)),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.width * 0.19),
            Center(
              child: SizedBox(
                  child: AutoSizeText("Themis Bistro",
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: "RobotoMono-Regular",
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ))),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.2),
            TabBar(
              labelColor: Colors.white,
              isScrollable: true,
              controller: tb,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                    child: Text("Sign In",
                        style: TextStyle(
                          fontFamily: "SecularOne-Regular",
                          fontSize: 28,
                        ))),
                Tab(
                  child: Text("Sign Up",
                      style: TextStyle(
                        fontFamily: "SecularOne-Regular",
                        fontSize: 28,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              //width: MediaQuery.of(context).size.width * 0.64,

              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 1,
              child: TabBarView(
                controller: tb,
                // key: const Key("Sign up"),
                children: const [SignIn(), SignUp()],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
