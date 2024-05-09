import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/orders.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

class ShowQrCode extends StatefulWidget {
  const ShowQrCode({Key? key}) : super(key: key);

  @override
  State<ShowQrCode> createState() => _ShowQrCodeState();
}

bool orderStatusDone = true;
void verifyOrderStatus() {
  FirebaseFirestore.instance.collection('orders').get().then(
    (QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach(
        (QueryDocumentSnapshot documentSnapshot) {
          print(documentSnapshot.id.toString());

          if (documentSnapshot.id == orderNumber) {
            print("s");
            orderStatusDone = true;
          }
        },
      );
    },
  );
}

class _ShowQrCodeState extends State<ShowQrCode> {
  // @override
  // initState() {
  //   super.initState();
  // }

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
          ],
        ),
      ),
    );
  }
}
