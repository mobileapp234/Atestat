import 'package:flutter/material.dart';
import 'package:mobile_app/Widgets/choose_food_type.dart';

import '../MainPages/home_page.dart';
import '../Widgets/menu.dart';
import 'package:mobile_app/Globals_Variables.dart' as c;

class Soups extends StatefulWidget {
  const Soups({super.key});

  @override
  State<Soups> createState() => _SoupsState();
}

class _SoupsState extends State<Soups> {
  @override
  Widget build(BuildContext context) {
    var c;
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Menu(
              // nume: nume[0],
              // pret: pret[0],
              // imagini: imagini[0],
              ),
        ],
      ),
    );
  }
}
