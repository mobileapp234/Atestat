import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/home_page.dart';
import 'package:mobile_app/Widgets/food_list.dart';

class Menu extends StatefulWidget {
  String nume;
  int pret;
  String imagini;
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
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    image: AssetImage(imagini[1]), fit: BoxFit.cover),
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
                nume1[1],
                style: TextStyle(
                    fontFamily: "SignikaNegative-Regular",
                    fontSize: 19,
                    fontWeight: FontWeight.w400),
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2, bottom: 5),
              child:
                  Text("${pret1[1]} lei", style: const TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ]),
    );
  }
}
