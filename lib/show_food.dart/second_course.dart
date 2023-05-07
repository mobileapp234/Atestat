import 'package:flutter/material.dart';

import '../MainPages/home_page.dart';
import '../Widgets/choose_food_type.dart';
import '../Widgets/menu.dart';
import 'package:mobile_app/Globals_Variables.dart' as c;

import '../Widgets/menu2.dart';

class SecondCourse extends StatefulWidget {
  const SecondCourse({super.key});

  @override
  State<SecondCourse> createState() => _SecondCourseState();
}

class _SecondCourseState extends State<SecondCourse> {
  void st() {
    setState(() {
      c.categorie = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Menu2(
            nume1: nume[1],
            pret1: pret[1],
            imagini1: imagini[1],
          ),
        ],
      ),
    );
  }
}
