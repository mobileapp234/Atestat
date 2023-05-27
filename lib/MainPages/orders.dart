// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:mobile_app/Widgets/menu.dart';
import 'package:mobile_app/Widgets/product.dart';
import 'package:mobile_app/Widgets/show_qr_Code.dart';
import 'package:page_transition/page_transition.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:slider_button/slider_button.dart';
import '../Widgets/menu1.dart';
import '../Widgets/menu2.dart';
import '../Widgets/menu3.dart';

// ignore: non_constant_identifier_names
int nr_food1 = 1;
// ignore: non_constant_identifier_names
int final_price = 0;

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

String orderNumber = "";

class _OrdersState extends State<Orders> {
  bool isFinished = false;
  String generateOrderNumber() {
    // Get the current user's UID
    String uid = FirebaseAuth.instance.currentUser!.uid;

    // Get the current date and time
    DateTime now = DateTime.now();

    // Format the date and time as a string
    String formattedDateTime = now.toString();

    // Remove any special characters from the formatted string
    formattedDateTime =
        formattedDateTime.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');

    // Combine the UID and formatted date and time to create the order number
    orderNumber = '$uid-$formattedDateTime';

    return orderNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "O R D E R S",
          style: TextStyle(fontSize: 20, fontFamily: "SignikaNegative-Regular"),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          // Disable back button functionality
          return false;
        },
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.height * 1,
            child: ListView(
              children: [
                // if (day_menu == 1)
                for (var i = 0; i <= 5; i++)
                  if (nr_products[i] > 0)
                    Product(
                      nume: name[i],
                      pret: price[i],
                      photo: image[i],
                      nrproducts: nr_products[i],
                      index: i,
                      categ: 0,
                    ),
                for (var i = 0; i <= 5; i++)
                  if (nr_products1[i] > 0)
                    Product(
                      nume: name1[i],
                      pret: price1[i],
                      photo: image1[i],
                      nrproducts: nr_products1[i],
                      index: i,
                      categ: 1,
                    ),
                for (var i = 0; i <= 5; i++)
                  if (nr_products2[i] > 0)
                    Product(
                      nume: name2[i],
                      pret: price2[i],
                      photo: image2[i],
                      nrproducts: nr_products2[i],
                      index: i,
                      categ: 2,
                    ),
                for (var i = 0; i <= 5; i++)
                  if (nr_products3[i] > 0)
                    Product(
                      nume: name3[i],
                      pret: price3[i],
                      photo: image3[i],
                      nrproducts: nr_products3[i],
                      index: i,
                      categ: 3,
                    ),
              ],
            ),
          ),
          SliderButton(
            buttonColor: Colors.blue,
            baseColor: Colors.blue,
            action: () async {
              // setState(() {
              //   ind.verify = "ShowQrCode()";
              // });

              final CollectionReference ordersCollection =
                  FirebaseFirestore.instance.collection('orders');
              String uid = FirebaseAuth.instance.currentUser!.uid;

              DateTime now = DateTime.now();

              String formattedDateTime = now.toString();

              formattedDateTime =
                  formattedDateTime.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');

              orderNumber = '$uid-$formattedDateTime';

              var orderData = {};

              for (var i = 0; i <= 5; i++) {
                if (nr_products[i] > 0) {
                  orderData[name[i]] = nr_products[i];
                }
              }

              for (var i = 0; i <= 5; i++) {
                if (nr_products1[i] > 0) {
                  orderData[name1[i]] = nr_products1[i];
                }
              }

              for (var i = 0; i <= 5; i++) {
                if (nr_products2[i] > 0) {
                  orderData[name2[i]] = nr_products2[i];
                }
              }

              for (var i = 0; i <= 5; i++) {
                if (nr_products3[i] > 0) {
                  orderData[name3[i]] = nr_products3[i];
                }
              }

              await FirebaseFirestore.instance
                  .collection('orders')
                  .doc(orderNumber)
                  .set({
                'orderNumber': orderNumber,
                'formattedDateTime': DateTime.now(),
                'products': orderData
              }).then((value) => {
                        print("Order added!"),
                      });
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade, // Choose the transition type
                  child: const ShowQrCode(), // The page you want to navigate to
                ),
              );
            },
            label: const Text(
              "Plasati comanda",
              style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
