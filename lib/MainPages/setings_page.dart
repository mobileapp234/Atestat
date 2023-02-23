import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Text("Setings"),
      ),
    );
  }
}
