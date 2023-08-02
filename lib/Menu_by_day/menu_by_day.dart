import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../MainPages/main_page.dart';

class MenuByDay extends StatefulWidget {
  const MenuByDay({super.key});

  @override
  State<MenuByDay> createState() => _MenuByDayState();
}

class _MenuByDayState extends State<MenuByDay> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
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
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            "MENIUL ZILEI",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "SourceSansPro-Italic.ttf",
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
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
                            badges.Badge(
                              position: badges.BadgePosition.topStart(),
                              badgeAnimation: badges.BadgeAnimation.fade(
                                animationDuration: Duration(seconds: 1),
                                colorChangeAnimationDuration:
                                    Duration(seconds: 1),
                                loopAnimation: false,
                                curve: Curves.fastOutSlowIn,
                                colorChangeAnimationCurve: Curves.easeInCubic,
                              ),
                              badgeStyle: badges.BadgeStyle(
                                // shape: badges.BadgeShape.,
                                badgeColor: Colors.blue,

                                padding: EdgeInsets.all(10),
                                borderRadius: BorderRadius.circular(4),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                              badgeContent: Text(
                                1.toString(),
                                style: TextStyle(
                                    fontFamily: "SourceSansPro-Italic.ttf",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              child: Container(
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
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/1.jpg"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.1,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/png/plus.png"))),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            badges.Badge(
                              badgeAnimation: badges.BadgeAnimation.fade(
                                animationDuration: Duration(seconds: 1),
                                colorChangeAnimationDuration:
                                    Duration(seconds: 1),
                                loopAnimation: false,
                                curve: Curves.fastOutSlowIn,
                                colorChangeAnimationCurve: Curves.easeInCubic,
                              ),
                              badgeStyle: badges.BadgeStyle(
                                // shape: badges.BadgeShape.,
                                badgeColor: Colors.blue,

                                padding: EdgeInsets.all(10),
                                borderRadius: BorderRadius.circular(4),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                              badgeContent: Text(
                                1.toString(),
                                style: TextStyle(
                                    fontFamily: "SourceSansPro-Italic.ttf",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              child: Container(
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
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/tomatosoup_13560_16x9.jpg"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  color: Colors.red[400],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  "${25} lei",
                                  style: TextStyle(
                                      fontFamily: "SourceSansPro-Italic.ttf",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25),
                                ),
                              ),
                            ),
                          ],
                        ),
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
          ],
        )
      ],
    ));
  }
}
