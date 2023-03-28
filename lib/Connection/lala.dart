import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  final textcontoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          // top: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 100, 40, 40),
                child: Container(
                  height: 380,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/background.jpg"),
                          fit: BoxFit.fill)),
                ),
              )
            ],
          ),
        ),
        Positioned(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
                controller: textcontoller,
                decoration: InputDecoration(
                    hintText: "shjfa", border: OutlineInputBorder()))
          ]),
        )
      ]),
    );
  }
}
