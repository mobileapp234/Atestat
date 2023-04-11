import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/Widgets/choose_food_type.dart';
import 'package:mobile_app/Widgets/home_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class HomePageScreenSize extends StatelessWidget {
  const HomePageScreenSize({super.key});

  @override
  Widget build(BuildContext context) {
    final sc_size = MediaQuery.of(context);
    // final
    return const HomePage();
  }
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tb = TabController(length: 3, vsync: this);
    return Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Row(children: [
              Text(
                "Themis Bistro",
                style: GoogleFonts.ptSerif(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              )
            ]),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("1111"),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 7, 0, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/png/Dollar-Coins-PNG_azdjjc.png"))),
                    ),
                  )
                ],
              )),
          const SizedBox(height: 12),
          SizedBox(height: 200, width: double.infinity, child: HomeSlider()),
          const SizedBox(height: 20),
          const ChooseFoodType(),
          const SizedBox(height: 20),
          const SizedBox(height: 5),
          const Text("ksdauhfgqisaudfgh", style: TextStyle(fontSize: 100)),
        ],
      ),
    ]));
  }
}
