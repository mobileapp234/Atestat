import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/main_page.dart';

class Logare0 extends StatelessWidget {
  const Logare0({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Logare());
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
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.fill,
                    colorFilter:
                        ColorFilter.mode(Colors.black38, BlendMode.darken)),
              ),
              //color: Colors.black54,
            ),
          ),
          Positioned(
            // top: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 100, 40, 40),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"))),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 30,
            top: 500,
            child: FloatingActionButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            }),
          )
        ],
      ),
    );
  }
}



   

        /*
        // top: 20,
        // width: 100,
        //height: 100,
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.fill)),
        ),

        Stack(
          children: <Widget>[
            Positioned(
                //width: 100,
                //height: 100,
                child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"))),
            )),
            Positioned(
              left: 30,
              top: 500,
              child: FloatingActionButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              }),
            ),
          ],
        ),
      ],
    ));
  }
}
*/
/*
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
          left: 50,
          top: 100,
          child: FloatingActionButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainPage()),
            );
          }),
        ),

        Column(
          children: [
            Positioned(
                height: 100,
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"))),
                )),
          ],
        )
      ],

      //]),
    ));
  }
}
*/