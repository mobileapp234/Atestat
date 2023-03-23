import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/main_page.dart';

import 'Connection/inregistrare.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logare(),
    );
  }
}
