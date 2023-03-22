import 'package:flutter/material.dart';

class ScreenSize extends StatelessWidget {
  const ScreenSize({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class SS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.of(context).size;

    return Container();
  }
}

class Logare extends StatefulWidget {
  const Logare({super.key});

  @override
  State<Logare> createState() => _LogareState();
}

class _LogareState extends State<Logare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          child: Container(
            height: 700,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/Catalog-Kaufland-8-decembrie-14-decembrie-2021-01.jpg"))),
          ),
        ),
        // const SizedBox(width: 500),
        const Positioned(
          child: Text("sfdsafd"),
        )
      ]),
    );
  }
}
