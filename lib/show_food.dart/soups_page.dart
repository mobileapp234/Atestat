import 'package:flutter/material.dart';

import '../Widgets/menu.dart';

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
          const Menu(
              // nume: nume[0],
              // pret: pret[0],
              // imagini: imagini[0],
              ),
        ],
      ),
    );
  }
}
