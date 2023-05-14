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
        child: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.blue)))),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Log out".toUpperCase(),
                    style: const TextStyle(fontSize: 15)),
              )),
        ),
      ),
    );
  }
}
