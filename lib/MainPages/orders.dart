import 'package:flutter/material.dart';
import 'package:mobile_app/MainPages/home_page.dart';
import 'package:mobile_app/MainPages/main_page.dart';
import 'package:mobile_app/Widgets/menu.dart';
import 'package:mobile_app/Widgets/product.dart';
import 'package:page_transition/page_transition.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:slider_button/slider_button.dart';
import '../Menu_by_day/menu_by_day.dart';
import '../Widgets/menu1.dart';
import '../Widgets/menu2.dart';
import '../Widgets/menu3.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;

// ignore: non_constant_identifier_names
bool isAlertDialogVisible = false;
int nr_food1 = 1;
// ignore: non_constant_identifier_names

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

DateTime now = DateTime.now();
DateTime thrirtyMinutesLater = now.add(Duration(minutes: 30));
DateTime twentyMinutesLater = now.add(Duration(minutes: 20));
DateTime fifteenMinutesLater = now.add(Duration(minutes: 15));
String Time0 = "${fifteenMinutesLater.hour}:${fifteenMinutesLater.minute}";
String Time1 = "${twentyMinutesLater.hour}:${twentyMinutesLater.minute}";
String Time2 = "${thrirtyMinutesLater.hour}:${thrirtyMinutesLater.minute}";
String orderNumber = "";
int order_value = 0;

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
  void initState() {
    super.initState();
    setState(() {
      order_value = 0;
    });
    calculateSum();
  }

  void calculateSum() {
    for (int ii = 0; ii < price.length; ii++) {
      setState(() {
        if (nr_products[ii] > 0) {
          order_value += price[ii] * nr_products[ii];
        }
      });
    }
    for (int ii1 = 0; ii1 < price1.length; ii1++) {
      setState(() {
        if (nr_products1[ii1] > 0) {
          order_value += price1[ii1] * nr_products1[ii1];
        }
      });
    }
    for (int ii2 = 0; ii2 < price2.length; ii2++) {
      setState(() {
        if (nr_products2[ii2] > 0) {
          order_value += price2[ii2] * nr_products2[ii2];
        }
      });
    }
    for (int ii3 = 0; ii3 < price3.length; ii3++) {
      setState(() {
        if (nr_products3[ii3] > 0) {
          order_value += price3[ii3] * nr_products3[ii3];
        }
      });
    }
    if (nr_menu > 0) {
      order_value += menu_day_price[day_of_week] * nr_menu;
    }
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
                for (var i = 0; i <= 5; i++)
                  if (nr_products[i] > 0)
                    //  order_value=order_value+(price[i]*nr_products[i]);
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
                if (nr_menu > 0)
                  Product(
                    nume: menu_day_name[0],
                    pret: menu_day_price[day_of_week],
                    photo: menu_photo[0],
                    nrproducts: nr_menu,
                    index: 0,
                    categ: 10,
                  ),
              ],
            ),
          ),
          Visibility(
            visible: !isAlertDialogVisible,
            child: SliderButton(
              // alignLabel: Alignment.lerp(1, 2, 3),
              width: MediaQuery.of(context).size.width * 0.8,
              buttonColor: Colors.blue,
              baseColor: Colors.blue,
              action: () async {
                final CollectionReference ordersCollection =
                    FirebaseFirestore.instance.collection('orders');
                String uid = FirebaseAuth.instance.currentUser!.uid;

                DateTime now = DateTime.now();

                String formattedDateTime = now.toString();

                formattedDateTime =
                    formattedDateTime.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');

                orderNumber = '$uid-$formattedDateTime';
                int ver = 0;
                Map<String, int> orderData = {};

                for (var i = 0; i <= 5; i++) {
                  if (nr_products[i] > 0) {
                    orderData[name[i]] = nr_products[i];
                    ver = 1;
                  }
                }

                for (var i = 0; i <= 5; i++) {
                  if (nr_products1[i] > 0) {
                    orderData[name1[i]] = nr_products1[i];
                    ver = 1;
                  }
                }

                for (var i = 0; i <= 5; i++) {
                  if (nr_products2[i] > 0) {
                    orderData[name2[i]] = nr_products2[i];
                    ver = 1;
                  }
                }

                for (var i = 0; i <= 5; i++) {
                  if (nr_products3[i] > 0) {
                    orderData[name3[i]] = nr_products3[i];
                    ver = 1;
                  }
                }
                if (nr_menu > 0) {
                  orderData[menu_day_name[0]] = nr_menu;
                  ver = 1;
                }
                if (ver == 0) {
                  setState(() {
                    isAlertDialogVisible = true;
                  });
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Cosul este gol'),
                      content: const Text(
                          'Va rugam sa adaugati produse inainte de a plasa comanda  '),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            setState(() {
                              isAlertDialogVisible = false;
                            });
                          },
                          child: const Text('Inapoi'),
                        ),
                      ],
                    ),
                  );
                } else {
                  await FirebaseFirestore.instance
                      .collection('orders')
                      .doc(orderNumber)
                      .set({
                    'orderNumber': orderNumber,
                    'formattedDateTime': DateTime.now(),
                    'orderDeadline': ind.nr_products <= 3
                        ? Time0
                        : ind.nr_products <= 5 && ind.nr_products > 3
                            ? Time1
                            : Time2,
                    'products': orderData,
                    'pretTotal': order_value
                  }).then((value) => {
                            print("Order added!"),
                          });
                  for (var i = 0; i <= 5; i++) {
                    nr_products[i] = 0;
                    nr_products1[i] = 0;
                    nr_products2[i] = 0;
                    nr_products3[i] = 0;
                  }
                  nr_menu = 0;
                  setState(() {
                    ind.showQr = true;
                    ind.nr_products = 0;
                  });
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType
                          .rightToLeftWithFade, // Choose the transition type
                      child:
                          const MainPage(), // The page you want to navigate to
                    ),
                  );
                }
              },
              label: Text(
                "Plasati comanda $order_value lei ",
                style: TextStyle(
                    color: Color(0xff4a4a4a),
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
