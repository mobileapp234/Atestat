// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/Widgets/menu3.dart';

class Soda extends StatefulWidget {
  const Soda({super.key});

  @override
  State<Soda> createState() => _SodaState();
}

class _SodaState extends State<Soda> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const Menu3()
        ],
      ),
    );
  }
}
