import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SetingsPage extends StatefulWidget {
  const SetingsPage({super.key});
  @override
  State<SetingsPage> createState() => SetingsState();
}

class SetingsState extends State<SetingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(child: FloatingActionButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
        )),
      ),
    );
  }
}
