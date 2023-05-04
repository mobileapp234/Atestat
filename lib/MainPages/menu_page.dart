import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManuPage extends StatefulWidget {
  const ManuPage({super.key});

  @override
  State<ManuPage> createState() => ManuPageState();
}

class ManuPageState extends State<ManuPage> {
  final PageController _pageController = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Stack(children: [
              Positioned(
                  child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1.5,
              )),
              Positioned(
                  child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.3,
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/download.jpg"))),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/Catalog-Kaufland-6-mai-12-mai-2020.jpg"))),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/tomatosoup_13560_16x9.jpg"),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
              )),
              Positioned(
                  top: 210,
                  child: Container(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      height: MediaQuery.of(context).size.height * 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("sdf6",
                                      style: GoogleFonts.actor(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                      )),
                                  Text("2dolari",
                                      style: GoogleFonts.abrilFatface(
                                          fontSize: 20, color: Colors.black)),
                                ]),
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 50, 0, 0)),
                                Text("People",
                                    style: GoogleFonts.almendraSc(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: [
                                Text("All from Romania",
                                    style: GoogleFonts.annieUseYourTelescope(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w100))
                              ],
                            ),
                            const SizedBox(height: 10),
                            Wrap(
                              children: List.generate(5, (index) {
                                return Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                );
                              }),
                            )
                          ],
                        ),
                      ))),
            ]),
          ],
        )
      ]),
    );
  }
}
