import 'package:flutter/material.dart';

import 'package:mobile_app/Globals_Variables.dart' as c;

import '../Widgets/menu1.dart';

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
          const Menu1()
        ],
      ),
    );
  }
}
