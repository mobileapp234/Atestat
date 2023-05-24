import 'dart:async';
import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String text = "Rezults go here";
  final _database = FirebaseDatabase.instance.reference();
  late StreamSubscription _remove;
  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _remove = _database
        .child("Meniu/Gustari/Sandwich cu pui")
        .onValue
        .listen((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>;
      final name = data['nume'] as String;
      final price = data['pret'] as int;
      setState(() {
        text = "$name la pretul de $price";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(text!)),
    );
  }

  @override
  void deactivate() {
    _remove.cancel();
    super.deactivate();
  }
}
