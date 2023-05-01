import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/home_page.dart';
import 'package:mobile_app/Globals_Variables.dart' as c;

class Menu extends StatefulWidget {
  final String nume;
  final int pret;
  final String imagini;
//final int lala;
  Menu(
      {super.key,
      required this.nume,
      required this.pret,
      required this.imagini});

  @override
  State<StatefulWidget> createState() {
    return _Menu();
  }
}

class _Menu extends State<Menu> {
  // @override
  // void didUpdateWidget(Menu oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (widget.nume != oldWidget.nume ||
  //       widget.pret != oldWidget.pret ||
  //       widget.imagini != oldWidget.imagini) {
  //     setState(() {});
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.25,
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
              padding: const EdgeInsets.all(5),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagini[c.categorie.value]),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: AutoSizeText(
                    nume[c.categorie.value],
                    style: TextStyle(
                        fontFamily: "SignikaNegative-Regular",
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 5),
                  child: Text("${pret[c.categorie.value]} lei",
                      style: const TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ]),
        ),
        const SizedBox(width: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.25,
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
              padding: const EdgeInsets.all(5),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagini[c.categorie.value + 1]),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: AutoSizeText(
                    nume[c.categorie.value + 1],
                    style: TextStyle(
                        fontFamily: "SignikaNegative-Regular",
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 5),
                  child: Text("${pret[c.categorie.value + 1]} lei",
                      style: const TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
