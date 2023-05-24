import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class AddFood extends StatefulWidget {
  const AddFood({Key? key}) : super(key: key);

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  late DatabaseReference fbRef;
  @override
  void initState() {
    super.initState();
    final String databaseUrl =
        'https://aplicatie-c564b-default-rtdb.europe-west1.firebasedatabase.app';
    FirebaseDatabase database = FirebaseDatabase(databaseURL: databaseUrl);
    fbRef = FirebaseDatabase.instance.reference().child("Meniu");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          child: Icon(Icons.food_bank),
          onPressed: () {
            Map<String, String> food = {
              'nume': "sd",
              'pret': "lala",
            };
            fbRef.push().set(food);
          },
        ),
      ),
    );
  }
}
