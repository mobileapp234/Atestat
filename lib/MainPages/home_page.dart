import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/Widgets/choose_food_type.dart';
import 'package:mobile_app/Widgets/home_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tb = TabController(length: 3, vsync: this);
    return Scaffold(
        body: ListView(
            //  scrollDirection: Axis.vertical,
            children: [
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(children: [
                  Text(
                    "Titlu",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 40,
                        color: Colors.blue,
                        fontStyle: FontStyle.italic),
                  )
                ]),
              ),

              SizedBox(
                  height: 200, width: double.infinity, child: HomeSlider()),
              const SizedBox(height: 20),
              const ChooseFoodType(),
              const SizedBox(height: 20),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: TabBar(
                      labelColor: Colors.black,
                      labelPadding: const EdgeInsets.only(right: 40, left: 40),
                      isScrollable: true,
                      controller: tb,
                      indicatorSize: TabBarIndicatorSize.label,
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(text: "Ciorbe"),
                        Tab(text: "Felul 2"),
                        Tab(text: "Desert"),
                      ],
                    )),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: TabBarView(controller: tb, children: [
                    ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 200,
                            //height: 0,
                            decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Catalog-Kaufland-6-mai-12-mai-2020.jpg"),
                                // fit: BoxFit.cover
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: 2000,
                      height: 3000,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/Catalog-Kaufland-4-noiembrie-10-noiembrie-2020_Page_01.jpg"))),
                    ),
                    Container(
                      width: 2000,
                      height: 3000,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/Catalog-Kaufland-6-mai-12-mai-2020.jpg"))),
                    ),

                    // Text("kdhf"),
                    // Text("sf"),
                  ])),
              //const Text("ksdauhfgqisaudfgh", style: TextStyle(fontSize: 100)),
            ],
          ),
        ]));
  }
}
