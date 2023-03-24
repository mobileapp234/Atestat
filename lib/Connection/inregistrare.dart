import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/main_page.dart';

class Logare extends StatefulWidget {
  const Logare({super.key});

  @override
  State<Logare> createState() => _LogareState();
}

class _LogareState extends State<Logare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.jpg"),
                        fit: BoxFit.fill)),
              ),
            ),
            //   Column(
            // children: [
            // const SizedBox(width: 500),\
            Positioned(
                child: Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                child: const Text("sdftg"),
              ),
            )),
            Positioned(
              child: FloatingActionButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              }),
            ),

            Positioned(
                child: Container(
              height: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"))),
            ))
          ],
        )
        //]),
      ],
    ));
  }
}
