import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/main_page.dart';

class ShowQrCode extends StatefulWidget {
  const ShowQrCode({super.key});

  @override
  State<ShowQrCode> createState() => _ShowQrCodeState();
}

class _ShowQrCodeState extends State<ShowQrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
          onWillPop: () async {
            // Disable back button functionality
            return false;
          },
          child: Center(
              child: FloatingActionButton(
            child: Icon(Icons.keyboard_backspace),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
          ))),
    );
  }
}
