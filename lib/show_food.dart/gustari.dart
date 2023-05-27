import 'package:flutter/material.dart';

import '../Widgets/menu.dart';

class Gustari extends StatefulWidget {
  const Gustari({super.key});

  @override
  State<Gustari> createState() => _GustariState();
}

class _GustariState extends State<Gustari> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
