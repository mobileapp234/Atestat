import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Connection/google_sign_in.dart';
import 'package:mobile_app/MainPages/main_page.dart';
import 'Connection/inregistrare.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'MainPage';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Isconnected(),
      ));
}

ChangeNotifierProvider(
    {required GoogleSignInProvider Function(dynamic context) create,
    required MaterialApp child}) {}

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
