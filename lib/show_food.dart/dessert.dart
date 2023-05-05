import 'package:flutter/material.dart';

import '../MainPages/home_page.dart';
import '../Widgets/menu.dart';

class Desserts extends StatefulWidget {
  const Desserts({super.key});

  @override
  State<Desserts> createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Menu(
            nume: nume[2],
            pret: pret[2],
            imagini: imagini[2],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
