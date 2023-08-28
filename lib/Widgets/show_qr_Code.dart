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
            FloatingActionButton(onPressed: () {
              StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('orders').snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }

                  orderStatusDone = true;
                  for (QueryDocumentSnapshot documentSnapshot
                      in snapshot.data!.docs) {
                    if (documentSnapshot.id == orderNumber) {
                      orderStatusDone = false;
                      break; // No need to continue searching if a match is found
                    }
                  }
                  print(orderStatusDone.toString());
                  if (orderStatusDone == true) {
                    setState(() {
                      ind.showQr = false;
                      Navigator.of(context).pop();
                    });
                  } else {
                    print("lala");
                  }

                  return Container(); // Replace with your desired widget
                },
              );

              // orderStatusDone = true;
              // FirebaseFirestore.instance.collection('orders').get().then(
              //   (QuerySnapshot querySnapshot) {
              //     querySnapshot.docs.forEach(
              //       (QueryDocumentSnapshot documentSnapshot) {
              //         // print(
              //         //     "Comparing: ${documentSnapshot.id} == $orderNumber");
              //         if (documentSnapshot.id == orderNumber) {
              //           // print("Match found: ${documentSnapshot.id}");
              //           orderStatusDone = false;
              //         }
              //       },
              //     );
              //     // print("orderStatusDone after loop: $orderStatusDone");

              //     if (orderStatusDone == true) {
              //       setState(() {
              //         ind.showQr = false;
              //         Navigator.of(context).pop();
              //       });
              //     } else {
              //       print("lala");
              //     }
              //   },
              // );
            })
            // FloatingActionButton(onPressed: () {
            //   // verifyOrderStatus();
            //   FirebaseFirestore.instance.collection('orders').get().then(
            //     (QuerySnapshot querySnapshot) {
            //       querySnapshot.docs.forEach(
            //         (QueryDocumentSnapshot documentSnapshot) {
            //           // print(documentSnapshot.id.toString());

            //           if (documentSnapshot.id == orderNumber) {
            //             print("s");
            //             orderStatusDone = true;
            //           }
            //         },
            //       );
            //     },
            //   );
            //   if (orderStatusDone == false) {
            //     setState(() {
            //       ind.showQr = false;
            //       Navigator.of(context).pop();
            //     });
            //   } else
            //     print("lala");
            //   // showDialog<String>(
            //   //     context: context,
            //   //     builder: (BuildContext context) => AlertDialog(
            //   //           title: Text("Comada"),
            //   //           content: Text(
            //   //               "Va rugam sa ridicati comanda pentru a da alta comanda "),
            //   //           actions: <Widget>[
            //   //             TextButton(
            //   //               onPressed: () {
            //   //                 Navigator.pop(context);
            //   //               },
            //   //               child: const Text('Inapoi'),
            //   //             ),
            //   //           ],
            //   //         ));
            // })
          ],
        ),
      ),
    );
  }
}
