import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/orders.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

class ShowQrCode extends StatefulWidget {
  const ShowQrCode({Key? key}) : super(key: key);

  @override
  State<ShowQrCode> createState() => _ShowQrCodeState();
}

class _ShowQrCodeState extends State<ShowQrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "Q R  P A G E",
          style: TextStyle(fontSize: 20, fontFamily: "SignikaNegative-Regular"),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          // Disable back button functionality
          return false;
        },
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(bottom: 32.0),
                child: QrImageView(
                  data: orderNumber,
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              ),
            ),
            FloatingActionButton(onPressed: () {
              setState(() {
                ind.showQr = false;
                Navigator.of(context).pop();
              });
            })
          ],
        ),
      ),
    );
  }
}
