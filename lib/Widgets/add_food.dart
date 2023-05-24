import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class AddFood extends StatefulWidget {
  const AddFood({Key? key}) : super(key: key);

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  void initState() {
    super.initState();
    final String databaseUrl =
        'https://aplicatie-c564b-default-rtdb.europe-west1.firebasedatabase.app';
    FirebaseDatabase database = FirebaseDatabase(databaseURL: databaseUrl);
  }

  final fb = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    final menu = fb.child("Meniu/");
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          child: Icon(Icons.food_bank),
          onPressed: () {
            menu.set({'name': "SandWich cu pui", 'pret': "12 lei"});
          },
        ),
      ),
    );
  }
}
