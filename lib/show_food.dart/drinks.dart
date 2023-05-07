import 'package:flutter/material.dart';

import '../MainPages/home_page.dart';
import '../Widgets/menu.dart';

class Drinks extends StatefulWidget {
  const Drinks({super.key});

  @override
  State<Drinks> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Menu(
              // nume: nume[3],
              // pret: pret[3],
              // imagini: imagini[3],
              ),
        ],
      ),
    );
  }
}
