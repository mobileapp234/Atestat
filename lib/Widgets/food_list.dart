import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 205,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/tomatosoup_13560_16x9.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            "Supa de perisoare",
                            style: GoogleFonts.signikaNegative(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 5),
                          child: Text("Pret:12 lei",
                              style: GoogleFonts.spectral(fontSize: 18)),
                        ),
                      ],
                    )
                  ]),
                ),
                const SizedBox(width: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 205,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/tomatosoup_13560_16x9.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            "Supa de perisoare",
                            style: GoogleFonts.signikaNegative(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 5),
                          child: Text("Pret:12 lei",
                              style: GoogleFonts.spectral(fontSize: 18)),
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 205,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/tomatosoup_13560_16x9.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            "Supa de perisoare",
                            style: GoogleFonts.signikaNegative(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 5),
                          child: Text("Pret:12 lei",
                              style: GoogleFonts.spectral(fontSize: 18)),
                        ),
                      ],
                    )
                  ]),
                ),
                const SizedBox(width: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 205,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/tomatosoup_13560_16x9.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            "Supa de perisoare",
                            style: GoogleFonts.signikaNegative(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 5),
                          child: Text("Pret:12 lei",
                              style: GoogleFonts.spectral(fontSize: 18)),
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 205,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/tomatosoup_13560_16x9.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            "Supa de perisoare",
                            style: GoogleFonts.signikaNegative(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 5),
                          child: Text("Pret:12 lei",
                              style: GoogleFonts.spectral(fontSize: 18)),
                        ),
                      ],
                    )
                  ]),
                ),
                const SizedBox(width: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 205,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x230E151B),
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/tomatosoup_13560_16x9.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                          ),
                          child: Text(
                            "Supa de perisoare",
                            style: GoogleFonts.signikaNegative(
                                fontSize: 19, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 5),
                          child: Text("Pret:12 lei",
                              style: GoogleFonts.spectral(fontSize: 18)),
                        ),
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ],
        ));
  }
}
