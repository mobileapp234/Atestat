import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Connection/google_sign_in.dart';
import 'package:mobile_app/MainPages/main_page.dart';
import 'Connection/inregistrare.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Isconnected(),
    );
  }
}

class Isconnected extends StatefulWidget {
  const Isconnected({Key? key});

  @override
  _IsconnectedState createState() => _IsconnectedState();
}

class _IsconnectedState extends State<Isconnected> {
  User? user;

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? newUser) {
      setState(() {
        user = newUser;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      print('User is currently signed out');
      return Logare();
    } else {
      print('User is signed in');
      return MainPage();
    }
  }
}
